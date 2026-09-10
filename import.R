library(readxl)
library(dplyr)

frogs <- read_excel("CalaverasData.xls", range = cell_rows(1:3273))
tail(frogs)

frogs <- frogs |>
  rename(
    day = Day,
    frog_type = `rent/ind/pro`,
    distance = `jump distance`,
    jump_n = `jump #`,
    distance_rel = `Relative to jump #1`,
    distance_3 = `3-jump dist`,
    distance_3_off = `measured 3-jump`,
    duration = `jump duration`,
    angle = angle,
    angle_lower = ...10,
    angle_upper = ...11,
    velocity = Vel,
    velocity_lower = ...13,
    velocity_upper = ...14
  ) |>
  mutate(
    jump_n = as.integer(jump_n),
    frog_type = case_when(
      frog_type == 1 ~ "rental",
      frog_type == 2 ~ "individual",
      frog_type == 3 ~ "pro",
      frog_type < 0 ~ NA
    )
  ) |>
  mutate(row = row_number(), .before = 1)

## Need to create a frog id variable. Does the data look like it comes in
## series of jumps for one frog, i.e. 1-2-3, 1-2-3, 1-2, 1-2-3-4-5, etc.?

frogs |>
  count(jump_n)

jumps <- frogs |>
  select(row, jump_n) |>
  mutate(
    nxt = lead(jump_n),
    diff = nxt - jump_n,
    series_end = nxt == 1,
    huh = diff < 0 & !series_end
  )

jumps |>
  count(huh)
## good news: there are only 6 places where jump_n goes down and the next
## element is not 1

inspect_me <- which(jumps$huh | is.na(jumps$huh)) |>
  lapply(\(x) x + (-2:2)) |>
  unlist()
jumps |> slice(inspect_me) |> print(n = Inf)

## the last one is simply end of the dataset
## so we have 5 jump series that start with something other than 1

## A new series (i.e. a new frog) starts when jump_n is 1, or when jump_n
## fails to increase (the irregular restarts found above)
frogs <- frogs |>
  mutate(
    new_series = jump_n == 1 | jump_n <= lag(jump_n, default = 0),
    frog_id = cumsum(new_series)
  ) |>
  select(-new_series) |>
  relocate(frog_id, .after = row)

## sanity checks: each frog has one frog_type and jump_n strictly increases
## (some series skip jump numbers where individual jumps weren't recorded)
frogs |>
  summarise(
    n_types = n_distinct(frog_type),
    jumps_ok = all(diff(jump_n) > 0),
    .by = frog_id
  ) |>
  count(n_types, jumps_ok)

nanoparquet::write_parquet(frogs, "frogs.parquet")

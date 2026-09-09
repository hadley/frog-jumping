# Chasing maximal performance: a cautionary tale from the celebrated jumping frogs of Calaveras County

H. C. Astley, E. M. Abbott, E. Azizi, R. L. Marsh and T. J. Roberts

*Journal of Experimental Biology* (2013) 216, 3947-3953. <https://doi.org/10.1242/jeb.090357>

> This is an **open access** paper, freely available from the publisher:
> <https://journals.biologists.com/jeb/article/216/21/3947/11669/Chasing-maximal-performance-a-cautionary-tale-from>
>
> This markdown of the data collection process was extracted from the publisher's HTML 

---

The Calaveras County Frog Jumping Jubilee, a contest inspired by the Mark Twain short story, has been held annually in Angels Camp, CA, for over 80 years. The contest consists of 3 days of qualifying rounds, followed by a day of finals to determine the winner. Contestants fall into two categories. ‘Professional’ frog jockeys bring their own locally-caught frogs and are serious competitors, often working in family groups that have passed down frog jumping secrets through generations of competition. ‘Amateurs’ compete with frogs rented from the fair organizers. We saw the contest as an opportunity to test the hypotheses that current laboratory-based measurements of frog jumping underestimate true maximal performance, and that large sample sizes are necessary to provide reliable estimates of maximal performance in bullfrogs. We used high-definition video recordings of the 84th annual contest to determine jump distance, and used this unusually large biomechanical data set to attempt to determine the sample sizes needed to observe maximum performance.

## MATERIALS AND METHODS

### Data collection

Frog jumps of the 84th annual Calaveras County Jumping Frog Jubilee were recorded with a Sony HDR-FX1 camcorder at 30 frames s<sup>−1</sup> (60 fields s<sup>−1</sup>) and 1440×1080 pixel resolution from a fixed position in the seating stands. Video files were de-interlaced prior to digitizing. All frogs were bullfrogs \[*R. catesbeiana* (Shaw 1802)\]. Contestants placed their frog on a standard starting location and induced them to jump three times in succession in order to achieve the maximum straight-line distance from the starting point. Contestants motivated the frogs by yelling, touching the frog, blowing on it, lunging towards it, or combinations thereof, although contact with the frog is forbidden after the first jump. Although only three jumps were required, some frogs jumped additional times, and these jumps were also included in our analysis. At the beginning and end of each day filming, a brief clip was recorded of a calibration grid placed on the stage consisting of six 148 cm squares, which were then digitized using a MATLAB digitizing script (Hedrick, 2008). These data were used to create a perspective transformation that was applied to digitized coordinates from jump videos. The locations of the frog's body at the first perceptible jump movement and first body–ground contact were digitized for each jump in the sequence and perspective transformed in MATLAB, and distances and jump durations were computed from transformed data. In several instances, the frog performed a rapid series of short, shallow jumps in which forward velocity was maintained during ground contact, similar to the ‘skittering’ behavior some species use to move across the surface of the water (Gans, 1976; Herrmann, 2006). Because these ‘skitters’ violated key assumptions underlying performance limits in frog jumping, such as that all energy from each jump is generated *de novo*, they were excluded from the data set. To assess accuracy, at the end of each day we filmed a tape measure locked at 213 cm as it was placed in seven locations around the stage at various angles to the camera. Subsequent digitizing and transformation of tape measures showed no consistent bias in distance with a 95% confidence interval of 1.6 cm.

### Rental frogs *versus* professionally jumped frogs

Frogs were categorized into two discrete groups. The first group consisted of ‘rental frogs’ provided by the fair and jumped by a diverse selection of fairgoers. The second group consisted of ‘professionally jumped frogs’, fielded by highly organized teams who had competed for many years or decades. These teams collected frogs from specific sites and pre-screened them for jump ability, then maintained, prepared and stimulated the frogs to jump using methods gleaned from trial-and-error experience. Identification of ‘rentals’ and ‘pros’ was made on the basis of announcements made by fair organizers prior to each jumping trial. Although we were not allowed to take measurements of frogs in the pros group, there were no visually discernible differences in size or overall morphology. A small number of frogs were brought by independent individuals not associated with teams, or were not identified as either rentals or pros; these categories were not included as part of the rentals or pros data sets, because of uncertain background and low sample sizes, but were included in overall results.

### Derived performance variables

Video measurements allowed the direct determination of total jump distance (*D*<sub>jump</sub>) and total jump duration (*T*<sub>j</sub>), and from these variables we calculated the angle (θ) and takeoff velocity (*V*<sub>t</sub>) of each jump using ballistic formulae. While a given jump distance can be achieved *via* many combinations of takeoff velocity and angle, each of these combinations will result in a different jump duration, only one of which will match our observed jump duration.

Equations were based on Marsh (Marsh, 1994) and simplifications in Peplowski and Marsh (Peplowski and Marsh, 1997). As in Marsh (Marsh, 1994), we divided the jump into three periods: takeoff (from the start of motion until takeoff), aerial (ballistic motion from takeoff until the center of mass descended to the level at takeoff) and descending (from center of mass reaching takeoff height until ground contact). Takeoff duration was: 

$$
T_{\mathrm{t}} = \frac{2L_{\mathrm{cm}}}{V_{\mathrm{t}}} \tag{1}
$$

 where *L*<sub>cm</sub> is the distance from the distal toe tip to the center of mass with legs fully extended and *V*<sub>t</sub> is takeoff velocity (Marsh, 1994). Aerial duration was: 

$$
T_{\mathrm{a}} = \frac{2V_{\mathrm{t}}\sin\theta}{g} \tag{2}
$$

 where ***g*** is the acceleration due to gravity and θ is the takeoff angle. Descending duration was approximated as: 

$$
T_{\mathrm{d}} = \frac{L_{\mathrm{cm}}}{V_{\mathrm{t}}} \tag{3}
$$

 and the total jump duration is the sum of all three (Eqns 1, 2 and 3): 

$$
T_{\mathrm{j}} = \frac{3L_{\mathrm{cm}}}{V_{\mathrm{t}}} + \frac{2V_{\mathrm{t}}\sin\theta}{g} \tag{4}
$$

Because horizontal velocity does not vary during ballistic motion, assuming a constant acceleration and angle during takeoff as in Eqn 1, total jump duration can also be expressed as: 

$$
T_{\mathrm{j}} = \frac{D_{\mathrm{jump}} + L_{\mathrm{cm}}\cos\theta}{V_{\mathrm{t}}\cos\theta} \tag{5}
$$

 where *D*<sub>jump</sub> is total jump distance, which can be re-arranged to: 

$$
V_{\mathrm{t}} = \frac{D_{\mathrm{jump}} + L_{\mathrm{cm}}\cos\theta}{T_{\mathrm{j}}\cos\theta} \tag{6}
$$

 and substituted into Eqn 4 to get: 

$$
T_{\mathrm{j}} = \frac{3T_{\mathrm{j}}L_{\mathrm{cm}}\cos\theta}{D_{\mathrm{jump}} + L_{\mathrm{cm}}\cos\theta} + \frac{2(D_{\mathrm{jump}} + L_{\mathrm{cm}}\cos\theta)\sin\theta}{T_{\mathrm{j}}g\cos\theta} \tag{7}
$$

 allowing calculation of an estimated *T*<sub>j</sub> for a given angle based on actual *T*<sub>j</sub>, jump distance and *L*<sub>cm</sub>. These estimated *T*<sub>j</sub> values for a variety of angles are then compared with measured *T*<sub>j</sub>. Once the angle is known, *V*<sub>t</sub> can be calculated *via* Eqn 6. Jumps with a distance of less than three times the length from the toe to the center of mass (*L*<sub>cm</sub>) or with jump durations of less than 0.4 s were excluded from this analysis because of large error relative to small values.

Once takeoff velocity and angle have been calculated, we can calculate the potential and kinetic energy: 

$$
E_{\mathrm{P}} = M_{\mathrm{b}}gL_{\mathrm{cm}}\sin\theta \tag{8}
$$



$$
E_{\mathrm{K}} = 0.5M_{\mathrm{b}}V_{\mathrm{t}}^{2} \tag{9}
$$

 where *M*<sub>b</sub> is body mass. In our analysis, energies were expressed in body-mass-specific terms, eliminating the need to measure the mass of each frog jumped: 

$$
\frac{E_{\mathrm{P}}}{M_{\mathrm{b}}} = gL_{\mathrm{cm}}\sin\theta \tag{10}
$$



$$
\frac{E_{\mathrm{K}}}{M_{\mathrm{b}}} = 0.5V_{\mathrm{t}}^{2} \tag{11}
$$

Total work per unit muscle mass is: 

$$
W_{\mathrm{m}} = \frac{gL_{\mathrm{cm}}\sin\theta + 0.5V_{\mathrm{t}}^{2}}{M_{\mathrm{m}}} \tag{12}
$$

 where *M*<sub>m</sub> is the proportion of muscle mass to body mass, assumed to be 24% of the total frog body mass based on prior measurements (Marsh, 1994). Average power per unit muscle mass was Eqn 12 divided by Eqn 1: 

$$
P_{\mathrm{m}} = \frac{gL_{\mathrm{cm}}\sin\theta + 0.5V_{\mathrm{t}}^{2}}{M_{\mathrm{m}}}\frac{V_{\mathrm{t}}}{2L_{\mathrm{cm}}} \tag{13}
$$

Peak power was calculated as twice the average power (Marsh, 1994).

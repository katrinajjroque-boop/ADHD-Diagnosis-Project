/* Reconstructed from the original STAT 410 project screenshots. */

/* Fit complementary log-log model */
proc genmod data=hyperaktiv;
    class
        sex(ref="female")
        age(ref="1")
        bipolar(ref="no")
        unipolar(ref="no")
        anxiety(ref="no")
        other(ref="no");

    model adhd(event="yes") =
        sex age bipolar unipolar anxiety other
        / dist=binomial link=cloglog;
run;

/* Compare the fitted model with an intercept-only model */
proc genmod data=hyperaktiv;
    model adhd =
        / dist=binomial link=cloglog;
run;

/*
The original project calculated the likelihood-ratio/deviance comparison
from the full and intercept-only model log likelihoods.
*/

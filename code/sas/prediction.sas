/* Example prediction using the complementary log-log model.
   Reconstructed from the original STAT 410 project screenshots. */

data prediction;
    input sex $ age $ bipolar $ unipolar $ anxiety $ other $;
    datalines;
female 1 no yes yes no
;
run;

data hyperaktiv_prediction;
    set hyperaktiv prediction;
run;

proc genmod data=hyperaktiv_prediction;
    class
        sex age bipolar unipolar anxiety other;

    model adhd(event="yes") =
        sex age bipolar unipolar anxiety other
        / dist=binomial link=cloglog;

    output out=outdata p=padhddiagnosis;
run;

/* The added prediction record was the final observation. */
proc print data=outdata(firstobs=101) noobs;
    var padhddiagnosis;
run;

/* Reported result in the original project: 0.48752. */

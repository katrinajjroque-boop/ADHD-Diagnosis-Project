# ADHD Diagnosis Predictive Modeling

Statistical modeling project using **SAS and R** to investigate whether demographic characteristics and selected psychiatric diagnoses were associated with the probability of an ADHD diagnosis in an adult clinical dataset.

> **Portfolio note:** This repository is a sanitized, recruiter-facing version of a STAT 410 course project. Personal health information and participant-level data from the original class report are intentionally excluded.

## Project Overview

This project compared three binary-response regression approaches:

- Binary logistic regression
- Probit regression
- Complementary log-log regression

The analysis focused on categorical demographic and psychiatric variables and used model-fit diagnostics, information criteria, coefficient significance, and predicted probabilities.

## Dataset

The analysis used a summarized version of the HYPERAKTIV dataset described in Hicks et al. (2021).

- 100 adult participants
- 50 participants with an ADHD diagnosis
- 50 clinical controls
- Outcome: ADHD diagnosis
- Predictors: sex, age group, bipolar diagnosis, unipolar depression, anxiety, and other psychiatric diagnoses

The participant-level dataset is **not included** in this repository.

## Methods

1. Prepared and summarized categorical variables.
2. Established reference categories for categorical predictors.
3. Fit logistic, probit, and complementary log-log models.
4. Compared model fit using deviance and AIC/AICC/BIC.
5. Examined individual predictor significance.
6. Calculated an example predicted probability using the complementary log-log model.
7. Reproduced the modeling workflow in both SAS and R.

## Key Findings

The fitted models provided limited evidence that the selected predictors substantially improved classification of ADHD diagnosis in this sample.

Among the three link functions, the complementary log-log model had the smallest reported AIC, AICC, and BIC values:

| Model | AIC | AICC | BIC |
|---|---:|---:|---:|
| Logistic | 147.63 | 149.63 | 171.08 |
| Probit | 147.58 | 149.58 | 171.03 |
| Complementary log-log | 147.24 | 149.24 | 170.69 |

Anxiety was the only predictor reported as statistically significant at the 0.05 level in the fitted models. Overall model-fit tests did not provide strong evidence that the full predictor set improved on the intercept-only model.

For an example participant profile defined in the original analysis, the complementary log-log model produced a predicted probability of approximately **48.75%**. This value should be interpreted only as a model output for this sample—not as a clinical diagnostic probability.

## Reproducibility

The original class project contained code as screenshots rather than separate `.R` and `.sas` source files. The code in this repository has therefore been **carefully reconstructed from those screenshots and the reported analysis**.

The reconstructed scripts preserve the original modeling approach while standardizing file paths, formatting, and obvious OCR/screenshot transcription errors.

Because the original participant-level dataset is not included, the scripts are provided primarily to demonstrate the analytical workflow and are not expected to run unchanged without the source data.

## Repository Structure

```text
adhd-diagnosis-predictive-modeling/
├── README.md
├── code/
│   ├── r/
│   │   ├── logistic_model.R
│   │   ├── probit_model.R
│   │   ├── cloglog_model.R
│   │   └── prediction.R
│   └── sas/
│       ├── logistic_model.sas
│       ├── probit_model.sas
│       ├── cloglog_model.sas
│       └── prediction.sas
├── data/
│   └── README.md
├── results/
│   └── model_comparison.md
└── docs/
    └── project_summary.md
```

## Source

Hicks, A. et al. (2021). *HYPERAKTIV: A Dataset of Physiological and Activity Data from Adult Patients with ADHD.* ACM IMWUT.

DOI: 10.1145/3458305.3478454

## Academic Context

STAT 410 — California State University, Long Beach  
Fall 2025

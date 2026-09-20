# Data

The original project used a summarized HYPERAKTIV dataset containing psychiatric and demographic information for 100 adult participants.

The public portfolio repository does **not** include participant-level records or screenshots of the raw data.

Variables used in the regression models:

- `ADHD` — binary outcome (`yes` / `no`)
- `SEX` — sex category
- `AGE` — age group
- `BIPOLAR` — bipolar diagnosis (`yes` / `no`)
- `UNIPOLAR` — unipolar depression (`yes` / `no`)
- `ANXIETY` — anxiety diagnosis (`yes` / `no`)
- `OTHER` — other psychiatric diagnosis (`yes` / `no`)

Age groups were coded as four categories, with age group 1 (17–29) used as the reference category.

The scripts expect a summarized CSV named `hyperaktiv_summary.csv` if the original dataset is available for authorized academic use.

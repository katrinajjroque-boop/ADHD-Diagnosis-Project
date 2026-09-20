# Binary logistic regression
# Reconstructed from the original STAT 410 project screenshots.

hyperaktiv.data <- read.csv(
  file = "hyperaktiv_summary.csv",
  header = TRUE,
  sep = ","
)

# Specify reference categories
sex.rel <- relevel(as.factor(hyperaktiv.data$SEX), ref = "female")
age.rel <- relevel(as.factor(hyperaktiv.data$AGE), ref = "1")
bipolar.rel <- relevel(as.factor(hyperaktiv.data$BIPOLAR), ref = "no")
unipolar.rel <- relevel(as.factor(hyperaktiv.data$UNIPOLAR), ref = "no")
anxiety.rel <- relevel(as.factor(hyperaktiv.data$ANXIETY), ref = "no")
other.rel <- relevel(as.factor(hyperaktiv.data$OTHER), ref = "no")
adhd.rel <- relevel(as.factor(hyperaktiv.data$ADHD), ref = "no")

# Fit logistic model
fitted.model <- glm(
  adhd.rel ~ sex.rel + age.rel + bipolar.rel +
    unipolar.rel + anxiety.rel + other.rel,
  data = hyperaktiv.data,
  family = binomial(link = "logit")
)

summary(fitted.model)

# Information criteria
n <- 100
p <- 8

AICc_value <- -2 * logLik(fitted.model) + 2 * p * n / (n - p - 1)
print(AICc_value)

# Optional: install.packages("AICcmodavg")
library(AICcmodavg)
AICc(fitted.model, return.K = FALSE)
BIC(fitted.model)

# Compare fitted model with intercept-only model
null.model <- glm(
  adhd.rel ~ 1,
  data = hyperaktiv.data,
  family = binomial(link = "logit")
)

deviance_value <- -2 * (logLik(null.model) - logLik(fitted.model))
p.value <- pchisq(deviance_value, df = 7, lower.tail = FALSE)

print(deviance_value)
print(p.value)

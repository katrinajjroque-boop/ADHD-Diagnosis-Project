# Example prediction using the fitted complementary log-log model
# Reconstructed from the original STAT 410 project.

new_participant <- data.frame(
  sex.rel = "female",
  age.rel = "1",
  bipolar.rel = "no",
  unipolar.rel = "yes",
  anxiety.rel = "yes",
  other.rel = "no"
)

predicted_probability <- predict(
  fitted.model,
  newdata = new_participant,
  type = "response"
)

print(predicted_probability)

# Reported result in the original project: approximately 0.4875.

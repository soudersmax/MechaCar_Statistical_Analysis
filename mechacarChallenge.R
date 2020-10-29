# Import the dplyr library and the challenge data files
library(dplyr)
mecha_mpg <- read.csv('data/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)

# Deliverable 1 --------------------------------------------
# Perform linear regression with all 6 variables and summarize
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg))

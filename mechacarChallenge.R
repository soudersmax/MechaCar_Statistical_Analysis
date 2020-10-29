# Import the dplyr library and the challenge data files
library(dplyr)
mecha_mpg <- read.csv('data/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
susp_coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Deliverable 1 --------------------------------------------
# Perform linear regression with all 6 variables and summarize
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg))

# Deliverable 2 -------------------------------------------- 
# Trip Analysis Visualizations 
# Create total Summary table with summarize()
total_summary <- susp_coil %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep')

# Create lot_summary df using group_by() summarize() 
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep')

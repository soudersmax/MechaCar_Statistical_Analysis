# Import the dplyr library and the challenge data files
library(dplyr)
library(ggplot2)
mecha_mpg <- read.csv('data/MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
susp_coil <- read.csv('Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

# Deliverable 1 --------------------------------------------
# Perform linear regression with all 6 variables and summarize
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha_mpg))

# Deliverable 2 -------------------------------------------- 
# Create total Summary table with summarize()
total_summary <- susp_coil %>% 
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep')

# Create lot_summary df using group_by() summarize() 
lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>%
  summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD = sd(PSI), .groups = 'keep')

# Deliverable 3 --------------------------------------------
# One-Sample, two-sided T-test comparing population mean PSI to total sample PSI
t.test(susp_coil$PSI, mu = 1500)

# One-Sample, two-sided T-tests comparing each lot's PSI to the population 
# Create the subsets
lot1 <- subset(susp_coil, Manufacturing_Lot =="Lot1")
lot2 <- subset(susp_coil, Manufacturing_Lot =="Lot2")
lot3 <- subset(susp_coil, Manufacturing_Lot =="Lot3")

# One-Sample T-Test on each subset
t.test(lot1$PSI, mu = 1500)
t.test(lot2$PSI, mu = 1500)
t.test(lot3$PSI, mu = 1500)

# Test for normality
ggplot(lot1,aes(x=PSI)) + geom_density()
ggplot(lot2,aes(x=PSI)) + geom_density()
ggplot(lot3,aes(x=PSI)) + geom_density()
ggplot(susp_coil, aes(x=PSI)) + geom_density()
shapiro.test(susp_coil$PSI)

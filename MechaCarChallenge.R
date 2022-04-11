# Deliverable 1

# Load the library
library(dplyr)

# Load the file
mechampg <- read.csv('MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
mechampg

# Linear Regression
mechampg_lm <- lm (mpg ~ vehicle_length +vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechampg)
mechampg_lm
summary(mechampg_lm)

# Summary of the Linear Regression
summary(mechampg_lm)$r.squared

# Deliverable 2

# Create Visualizations for the Trip Analysis
scoil <- read.csv('Suspension_Coil.csv')
scoil
Total_summary = scoil %>% summarize(Mean= mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
Total_summary

# Grouping by LOT #
lot_summary = scoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean= mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary

# Deliverable 3

# T-Tests on Suspension Coils
t.test(scoil$PSI, mu=1500)

t.test(subset(scoil, Manufacturing_Lot=='Lot1')$PSI, mu=1500)

t.test(subset(scoil, Manufacturing_Lot=='Lot2')$PSI, mu=1500)

t.test(subset(scoil, Manufacturing_Lot=='Lot3')$PSI, mu=1500)

# Deliverable 4



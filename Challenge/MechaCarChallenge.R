# Deliverable 1

library(dplyr)
MechaCar_df <- read.csv(file = 'MechaCar_mpg.csv', check.names = F, stringsAsFactors = F)
head(MechaCar_df)

# Multiple linear regression model
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_df)

# summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_df))


# Deliverable 2

Suspension_Coil_df <- read.csv(file = 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(Suspension_Coil_df)

# total summary 
total_summary <- Suspension_Coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

# lots summary 
lot_summary <- Suspension_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep')


# Deliverable 3

t.test(Suspension_Coil_df$PSI, mu=1500)

# t test on lots

t.test(subset(Suspension_Coil_df$PSI,Suspension_Coil_df$Manufacturing_Lot == "Lot1"),mu=1500)
# t-test for lot 2
t.test(subset(Suspension_Coil_df$PSI,Suspension_Coil_df$Manufacturing_Lot == "Lot2"),mu=1500)
# t-test for lot 3
t.test(subset(Suspension_Coil_df$PSI,Suspension_Coil_df$Manufacturing_Lot == "Lot3"),mu=1500)


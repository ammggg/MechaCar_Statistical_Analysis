# Deliverable 1
# 3 - use the library() function to load the dplyr package
library(dplyr)

# 4 - import and read in the MechaCar_mpg.csv file as a dataframe
library(tidyverse)
mecha_mpg <- read.csv(file="MechaCar_mpg.csv", check.names=F, stringsAsFactors = F)

# 5 - perform linear regression using the lm() function by passing in all six variables and add the dataframe created in Step 4 as the data parameter
lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD, data=mecha_mpg)

# 6 - using the summary() function, determine the p-value and the r-squared
summary(lm(mpg ~ vehicle_weight + vehicle_length + spoiler_angle + ground_clearance + AWD, data=mecha_mpg))

# Deliverable 2
# 2 - import and read in the Suspension_Coil.csv file as a table
mecha_coil <- read.csv(file="Suspension_Coil.csv", check.names=F,stringsAsFactors = F)
head(mecha_coil)

# 3 - create a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of PSI
total_summary <- mecha_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
View(total_summary)

# 4 - create a lot_summary dataframe using group_by() and summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the PSI column
lot_summary <- mecha_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups='keep')
View(lot_summary)

#Deliverable 3
# 1 - use t.test() function to determine if PSI across all manufacturing lots is statistically different from the population mean of 1,500psi.
t.test(mecha_coil$PSI, mu=1500)

# 2 - write three more scripts using t.test() and subset() to determine if the PSI for each manufacturing lot is statisticaly different from population mean of 1,500psi.
lot1 <- subset(mecha_coil, Manufacturing_Lot == "Lot1")
lot2 <- subset(mecha_coil, Manufacturing_Lot == "Lot2")
lot3 <- subset(mecha_coil, Manufacturing_Lot == "Lot3")

t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)







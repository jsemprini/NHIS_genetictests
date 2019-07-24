#Drop males, non-white/black, child/medicare populations
data <- subset(data, SEX==2)
data <- subset(data, RACEA<=200)
data <- subset(data, AGE>=18)
data <- subset(data, AGE<=64)
data <- subset(data, HISPETH==10)


#88,168 observations

#recode region
data$GEO <- data$REGION
data$GEO <- "Northeast"
data$GEO[data$REGION==2] <- "Midwest"
data$GEO[data$REGION==3] <- "South"
data$GEO[data$REGION==4] <- "West"


#recode marital status
data$MARITAL <- data$MARSTAT
data$MARITAL <- "Married"
data$MARITAL[data$MARSTAT==20] <- "Widowed"
data$MARITAL[data$MARSTAT==30] <- "Divorced"
data$MARITAL[data$MARSTAT==40] <- "Seperated"
data$MARITAL[data$MARSTAT>=50] <- "Never Married"

data$MAR <- 1
data$MAR[data$MARITAL=="Never Married"] <- 0

#Recode Race
data$RACE <- "White"
data$RACE[data$RACEA==200] <- "Black"

data$BLACK <- 1
data$BLACK[data$RACE=="White"] <- 0

#backup data file
data_backup <- data

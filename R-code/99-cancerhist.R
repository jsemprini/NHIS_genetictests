data4$cancerhist <- 0
cols <- c(73:103)
data4$cancerhist[cols==1] <- 1

disc_GT3 <- table(data4$RACE, data4$cancerhist, data4$GT_EVERHEARD)
ftable(disc_GT3)

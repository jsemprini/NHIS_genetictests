#data 2 <- no 2015, as "Ever heard of GT" was not asked. 
#DV1 = Everheard
data2 <- subset(data, data$YEAR<2015)

#data2 <- only 2015
#DV3 = GT

data3 <- subset(data, data$YEAR==2015)

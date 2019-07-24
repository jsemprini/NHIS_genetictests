data <- df_3_

#education
data$EDUC <- data$EDUCREC1

data$EDUC <- "Some HS, No Degree"
data$EDUC[data$EDUCREC1==13] <- "High School Degree"
data$EDUC[data$EDUCREC1==14] <- "Some College, No Degree"
data$EDUC[data$EDUCREC1==15] <- "College Degree"
data$EDUC[data$EDUCREC1==16] <- "Post-Graduate"

data$EDUCATED <- 1
data$EDUCATED[data$EDUC=="High School Degree" | data$EDUC=="Some HS, No Degree" | data$EDUC=="Some College, No Degree"] <- 0


#recode employment
data$EMP <- data$EMPSTAT
data$EMP <- "Employed"
data$EMP[data$EMPSTAT==30] <- "Unemployed"
data$EMP[data$EMPSTAT>=40] <- "Not in Labor Force"
data$EMPL <- 0
data$EMPL[data$EMP=="Employed"] <- 1

#recode poverty
data$POORYN[data$POORYN>3] <- 2
data$POVERTYL <- data$POORYN
data$POVERTYL <- "At, or Above Poverty"
data$POVERTYL[data$POORYN==2] <- "Below Poverty Level"

data$INPOV <- 0
data$INPOV[data$POVERTYL=="Below Poverty Level"] <- 1

#recode reproductive health
data$BIRTHEV[data$BIRTHEV==1] <- 0
data$BIRTHEV[data$BIRTHEV==2] <- 1

data$PREGNANTNOW[data$PREGNANTNOW==1] <- 0
data$PREGNANTNOW[data$PREGNANTNOW==2] <- 1

data$REPRODHIST <- data$BIRTHEV + data$PREGNANTNOW
data$REPRODHIST[data$REPRODHIST==2] <- 1

#recode health controls
data$INSURED <- 0
data$INSURED[data$HINOTCOVE==1] <-1
data$HCOV_PRIVATE <- 0
data$HCOV_PRIVATE [data$HIPRIVATEE==2 | data$HIPRIVATEE==3] <- 1

data$H_COVERAGE <- "Insured, Public"
data$H_COVERAGE[data$HIPRIVATEE==2 | data$HIPRIVATEE==3] <- "Insured, Private"
data$H_COVERAGE[data$INSURED==0] <- "Uninsured"

#create Cancer Prevention Screening Control (Any Screening)
data$SCREENED <- 0
data$SCREENED[data$BSTHEV==2 | data$BSTOEV==2 | data$MAMEV==2 | data$PAPEV==2] <- 1
data$REC_SCREEN <- 0
data$REC_SCREEN[data$MAMDR1YR==2 | data$PAPDR1YR ==2] <- 1

#RECODE SISTER / BROTHER
data$FSNHCAN[data$FSNHCAN==96]<-0
data$FBNHCAN[data$FBNHCAN==96]<-0

#create Cancer Family History Control (Any Hist)
data$FAMHISTCANCER <- 0
data$FAMHISTCANCER[data$BFHCAN==2 | data$BMHCAN==2 | data$FBNHCAN>0 | data$FSNHCAN>0] <- 1

#recode IV - continuity of and connectedness to care
data$USUAL <- 0
data$USUAL[data$USUALPL==2 | data$USUALPL==3] <-1

data$DELAY_COST <- 1
data$DELAY_COST[data$DELAYCOST==1] <- 0

data$CHANGE_USUAL <- 0
data$CHANGE_USUAL[data$CHANGEIN>=1] <- 1

data$CHANGE_USUAL_IN <- NA
data$CHANGE_USUAL_IN[data$CHANGEIN==2] <- 1
data$CHANGE_USUAL_IN[data$CHANGE_USUAL!=0 & data$CHANGEIN!=2] <- 0

data$HHDELAY_COST <- 0 
data$HHDELAY_COST[data$FAMDELAYCOST==2 | data$FAMYBARCAR==2] <-1

data$HHDELAY_NOTCOST <- 0
data$HHDELAY_NOTCOST[data$DELAYAPPT==2 | data$DELAYHRS==2 | data$DELAYPHONE==2 | data$DELAYTRANS==2 | data$DELAYWAIT==2] <-1

#recode DV - genetic test data
data$GT_EVERHEARD <- 0
data$GT_EVERHEARD[data$GENTCANHR==2] <- 1

data$GT_EVERHEAR_up <- 0
data$GT_EVERHEAR_up[data$GENTCANHR>=2] <- 1

data$GT <- 0
data$GT[data$GENTCANEV==2] <-1 
data$GT_up <- 0
data$GT_up[data$GENTCANEV==2] <-1 


data$GT_REC <- NA
data$GT_REC[data$GENTCANDREC==1] <- 0
data$GT_REC[data$GENTCANDREC==2] <- 1

data$GT_REC_up <- 0
data$GT_REC_up[data$GENTCANDREC>=2] <- 1

data$GT_DISCDR <- NA
data$GT_DISCDR[data$GENTCANHR>=2] <- 0
data$GT_DISCDR[data$GENTCANHR==2 & data$GENTCANDREC>=1] <- 1 

data$GT_DISCDR_up <- 0
data$GT_DISCDR_up[data$GENTCANHR>=2 & data$GENTCANDREC>=1] <- 1


data3 <- subset(data2, data2$GT_EVERHEARD==1)


#review by insurance
hcov_GT3 <- table(data3$RACE, data3$H_COVERAGE, data3$GT)
ftable(hcov_GT3)


#review by GEO
get_GT3 <- table(data3$RACE, data3$GEO, data3$GT)
ftable(get_GT3)

data3$MAR[data3$MARITAL=="Never Married"] <- 0

#review by Marital
mar_GT3 <- table(data3$RACE, data3$MARITAL, data3$GT)
ftable(mar_GT3)

marital_GT3 <- table(data3$RACE, data3$MAR, data3$GT)
ftable(marital_GT3)

#review by educ
edu_GT3 <- table(data3$RACE, data3$EDUC, data3$GT)
ftable(edu_GT3)

educated_GT3 <- table(data3$RACE, data3$EDUCATED, data3$GT)
ftable(educated_GT3)

#review by employment
emp_GT <- table(data3$RACE, data3$EMP, data3$GT)
ftable(emp_GT)

employ_GT <- table(data3$RACE, data3$EMPL, data3$GT)
ftable(employ_GT)

#review by poverty
pov_GT3 <- table(data3$RACE, data3$POVERTYL, data3$GT)
ftable(pov_GT3)

#review by reproductive history
rep_GT3 <- table(data3$RACE, data3$REPRODHIST, data3$GT)
ftable(rep_GT3)

#review by screened
scr_GT3 <- table(data3$RACE, data3$SCREENED, data3$GT)
ftable(scr_GT3)

#REVIEW fam history of cancer
famhist_GT3 <- table(data3$RACE, data3$FAMHISTCANCER, data3$GT)
ftable(famhist_GT3)

#review usual
usual_GT3 <- table(data3$RACE, data3$USUAL, data3$GT)
ftable(usual_GT3)

#review change in usual
changeusual_GT3 <- table(data3$RACE, data3$CHANGE_USUAL, data3$GT)
ftable(changeusual_GT3)

#review change in usual_in
changeusualIN_GT3 <- table(data3$RACE, data3$CHANGE_USUAL_IN, data3$GT)
ftable(changeusualIN_GT3)

#REVIEW DELAY IN COST
delay_GT3 <- table(data3$RACE, data3$DELAY_COST, data3$GT)
ftable(delay_GT3)

#review delay cost HH
HH_delaycost_GT3 <- table(data3$RACE, data3$HHDELAY_COST, data3$GT)
ftable(HH_delaycost_GT3)

#review delay NOT COST hh
HH_delayNOT_GT3 <- table(data3$RACE, data3$HHDELAY_NOTCOST, data3$GT)
ftable(HH_delayNOT_GT3)

insur_GT3 <- table(data3$RACE, data3$INSURED, data3$GT)
ftable(insur_GT3)

priv_GT3 <- table(data3$RACE, data3$HCOV_PRIVATE, data3$GT)
ftable(priv_GT3)

#total table GT
total_GT <- table(data3$RACE, data3$GT)
total_GT

#review by insurance
hcov_GT3 <- table(data2$RACE, data2$H_COVERAGE, data2$GT_EVERHEARD)
ftable(hcov_GT3)


#review by GEO
get_GT3 <- table(data2$RACE, data2$GEO, data2$GT_EVERHEARD)
ftable(get_GT3)

data2$MAR[data2$MARITAL=="Never Married"] <- 0

#review by Marital
mar_GT3 <- table(data2$RACE, data2$MARITAL, data2$GT_EVERHEARD)
ftable(mar_GT3)

marital_GT3 <- table(data2$RACE, data2$MAR, data2$GT_EVERHEARD)
ftable(marital_GT3)

#review by educ
edu_GT3 <- table(data2$RACE, data2$EDUC, data2$GT_EVERHEARD)
ftable(edu_GT3)

educated_GT3 <- table(data2$RACE, data2$EDUCATED, data2$GT_EVERHEARD)
ftable(educated_GT3)

#review by employment
emp_GT <- table(data2$RACE, data2$EMP, data2$GT_EVERHEARD)
ftable(emp_GT)

employ_GT <- table(data2$RACE, data2$EMPL, data2$GT_EVERHEARD)
ftable(employ_GT)

#review by poverty
pov_GT3 <- table(data2$RACE, data2$POVERTYL, data2$GT_EVERHEARD)
ftable(pov_GT3)

#review by reproductive history
rep_GT3 <- table(data2$RACE, data2$REPRODHIST, data2$GT_EVERHEARD)
ftable(rep_GT3)

#review by screened
scr_GT3 <- table(data2$RACE, data2$SCREENED, data2$GT_EVERHEARD)
ftable(scr_GT3)

#REVIEW fam history of cancer
famhist_GT3 <- table(data2$RACE, data2$FAMHISTCANCER, data2$GT_EVERHEARD)
ftable(famhist_GT3)

#review usual
usual_GT3 <- table(data2$RACE, data2$USUAL, data2$GT_EVERHEARD)
ftable(usual_GT3)

#review change in usual
changeusual_GT3 <- table(data2$RACE, data2$CHANGE_USUAL, data2$GT_EVERHEARD)
ftable(changeusual_GT3)

#review change in usual_in
changeusualIN_GT3 <- table(data2$RACE, data2$CHANGE_USUAL_IN, data2$GT_EVERHEARD)
ftable(changeusualIN_GT3)

#REVIEW DELAY IN COST
delay_GT3 <- table(data2$RACE, data2$DELAY_COST, data2$GT_EVERHEARD)
ftable(delay_GT3)

#review delay cost HH
HH_delaycost_GT3 <- table(data2$RACE, data2$HHDELAY_COST, data2$GT_EVERHEARD)
ftable(HH_delaycost_GT3)

#review delay NOT COST hh
HH_delayNOT_GT3 <- table(data2$RACE, data2$HHDELAY_NOTCOST, data2$GT_EVERHEARD)
ftable(HH_delayNOT_GT3)

insur_GT3 <- table(data2$RACE, data2$INSURED, data2$GT_EVERHEARD)
ftable(insur_GT3)

priv_GT3 <- table(data2$RACE, data2$HCOV_PRIVATE, data2$GT_EVERHEARD)
ftable(priv_GT3)

#total table GT
total_GT <- table(data2$RACE, data2$GT_EVERHEARD)
total_GT

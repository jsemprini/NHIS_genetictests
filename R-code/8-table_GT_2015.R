#review by insurance
hcov_GT3 <- table(data4$RACE, data4$H_COVERAGE, data4$GT)
ftable(hcov_GT3)


#review by GEO
get_GT3 <- table(data4$RACE, data4$GEO, data4$GT)
ftable(get_GT3)

data4$MAR[data4$MARITAL=="Never Married"] <- 0

#review by Marital
mar_GT3 <- table(data4$RACE, data4$MARITAL, data4$GT)
ftable(mar_GT3)

marital_GT3 <- table(data4$RACE, data4$MAR, data4$GT)
ftable(marital_GT3)

educated_GT3 <- table(data4$RACE, data4$EDUCATED, data4$GT)
ftable(educated_GT3)

#review by employment
emp_GT <- table(data4$RACE, data4$EMP, data4$GT)
ftable(emp_GT)

employ_GT <- table(data4$RACE, data4$EMPL, data4$GT)
ftable(employ_GT)

#review by poverty
pov_GT3 <- table(data4$RACE, data4$POVERTYL, data4$GT)
ftable(pov_GT3)

#review by reproductive history
rep_GT3 <- table(data4$RACE, data4$REPRODHIST, data4$GT)
ftable(rep_GT3)

#review by screened
scr_GT3 <- table(data4$RACE, data4$SCREENED, data4$GT)
ftable(scr_GT3)

#REVIEW fam history of cancer
famhist_GT3 <- table(data4$RACE, data4$FAMHISTCANCER, data4$GT)
ftable(famhist_GT3)

#review usual
usual_GT3 <- table(data4$RACE, data4$USUAL, data4$GT)
ftable(usual_GT3)

#review change in usual
changeusual_GT3 <- table(data4$RACE, data4$CHANGE_USUAL, data4$GT)
ftable(changeusual_GT3)

#review change in usual_in
changeusualIN_GT3 <- table(data4$RACE, data4$CHANGE_USUAL_IN, data4$GT)
ftable(changeusualIN_GT3)

#REVIEW DELAY IN COST
delay_GT3 <- table(data4$RACE, data4$DELAY_COST, data4$GT)
ftable(delay_GT3)

#review delay cost HH
HH_delaycost_GT3 <- table(data4$RACE, data4$HHDELAY_COST, data4$GT)
ftable(HH_delaycost_GT3)

#review delay NOT COST hh
HH_delayNOT_GT3 <- table(data4$RACE, data4$HHDELAY_NOTCOST, data4$GT)
ftable(HH_delayNOT_GT3)

insur_GT3 <- table(data4$RACE, data4$INSURED, data4$GT)
ftable(insur_GT3)

priv_GT3 <- table(data4$RACE, data4$HCOV_PRIVATE, data4$GT)
ftable(priv_GT3)

#total table GT
total_GT <- table(data4$RACE, data4$GT)
total_GT

rec_GT3 <- table(data4$RACE, data4$GT_REC_up, data4$GT)
ftable(rec_GT3)

data4$GT_DISCDR <- 0
data4$GT_DISCDR[data4$GENTCANDISC==2] <- 1

disc_GT3 <- table(data4$RACE, data4$GT_DISCDR, data4$GT)
ftable(disc_GT3)

library(survey)
library(jtools)

# Logistic Regression  - DV1 GTEV, 2000-2010
fit_DV1W1 <- svyglm(GT_EVERHEARD ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                design= subset(df, BLACK==0) ,family=binomial())


summ(fit_DV1W1, confint= TRUE, exp = TRUE)

fit_DV1B1 <- svyglm(GT_EVERHEARD ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==1) ,family=binomial())


summ(fit_DV1B1, confint= TRUE, exp = TRUE)

plot_summs(fit_DV1W1, fit_DV1B1, exp=TRUE, omit.coefs = c("(Intercept)", "REPRODHIST", "SCREENED"),
           model.names = c("White", "Black"))



# Logistic Regression  - DV2 GT | GTEV, 2000-2010
fit_DV2W1 <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==0 & GT_EVERHEARD==1),family=binomial())


summ(fit_DV2W1, confint = TRUE, exp = TRUE)

#logistic regression - DV2b
fit_DV2W1b <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                     design= subset(df, BLACK==0 & SCREENED==1 & GT_EVERHEARD==1),family=binomial())


summ(fit_DV2W1b, confint = TRUE, exp = TRUE)

fit_DV2B1 <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                      design= subset(df, BLACK==1 & GT_EVERHEARD==1),family=binomial())


summ(fit_DV2B1, confint = TRUE, exp = TRUE)

#logistic regression - DV2b
fit_DV2B1b <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                       design= subset(df, BLACK==1 & SCREENED==1 & GT_EVERHEARD==1),family=binomial())


summ(fit_DV2B1b, confint = TRUE, exp = TRUE)


plot_summs(fit_DV2W1, fit_DV2W1b, fit_DV2B1, fit_DV2B1b, exp=TRUE, omit.coefs = c("(Intercept)", "SCREENED"),
           model.names = c("White: GT | EV", "White: GT | EV+SC", "Black: GT | EV", "Black: GT | EV+SC"))


# Logistic Regression  - DV3 GT, 2015 

fit_DV3W1 <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                      design= subset(df, BLACK==0),family=binomial())

summ(fit_DV3W1, confint = TRUE, exp=TRUE)

fit_DV3B1 <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==1),family=binomial())

summ(fit_DV3B1, confint = TRUE, exp=TRUE)


plot_summs(fit_DV3W1, fit_DV3B1, exp=TRUE, omit.coefs = c("(Intercept)"),
           model.names = c("White", "Black"))

plot_summs(fit_DV3W1, fit_DV3B1, exp=TRUE, omit.coefs = c("(Intercept)", "SCREENED"),
           model.names = c("White", "Black"))



# Logistic Regression  - DV3b GT, 2015 | GT_DISCDR


fit_DV3W1b <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                      design= subset(df, BLACK==0 & GT_DISCDR==1), family=binomial())

summ(fit_DV3W1b, confint = TRUE, exp=TRUE)

fit_DV3B1b <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==1 & GT_DISCDR==1), family=binomial())

summ(fit_DV3B1b, confint = TRUE, exp=TRUE)

#TROUBLE WITH GRAPH
plot_summs(fit_DV3W1b, fit_DV3B1b, exp=TRUE, omit.coefs = "(Intercept)",
           model.names = c("White", "Black"))




#logistic regression: DV4 - 2015 GT_DISCDR

fit_DV4W1 <- svyglm(GT_DISCDR ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                      design= subset(df, BLACK==0),family=binomial())

summ(fit_DV4W1, confint = TRUE, exp=TRUE)

fit_DV4B1 <- svyglm(GT_DISCDR ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==1),family=binomial())

summ(fit_DV4B1, confint = TRUE, exp=TRUE)

plot_summs(fit_DV4W1, fit_DV4B1, exp=TRUE, omit.coefs = c("(Intercept)", "SCREENED"),
           model.names = c("White", "Black"))






#POISSON REGRESSION Regression  - DV1 GTEV, 2000-2010

fit_DV1W2 <- svyglm(GT_EVERHEARD ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==0) ,family=poisson())


summ(fit_DV1W2, confint= TRUE, exp = TRUE)

fit_DV1B2 <- svyglm(GT_EVERHEARD ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==1) ,family=poisson())


summ(fit_DV1B2, confint= TRUE, exp = TRUE)

plot_summs(fit_DV1W2, fit_DV1B2, exp=TRUE, omit.coefs = c("(Intercept)", "REPRODHIST", "SCREENED"),
           model.names = c("White", "Black"))



# Poisson Regression  - DV2 GT | GTEV, 2000-2010
fit_DV2W2 <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==0 & GT_EVERHEARD==1),family=poisson())


summ(fit_DV2W2, confint = TRUE, exp = TRUE)

#poisson regression - DV2b
fit_DV2W2b <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                     design= subset(df, BLACK==0 & SCREENED==1 & GT_EVERHEARD==1),family=poisson())


summ(fit_DV2W2b, confint = TRUE, exp = TRUE)

fit_DV2B2 <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==1 & GT_EVERHEARD==1),family=poisson())


summ(fit_DV2B2, confint = TRUE, exp = TRUE)

#logistic regression - DV2b
fit_DV2B2b <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                     design= subset(df, BLACK==1 & SCREENED==1 & GT_EVERHEARD==1),family=poisson())


summ(fit_DV2B2b, confint = TRUE, exp = TRUE)


plot_summs(fit_DV2W2, fit_DV2W2b, fit_DV2B2, fit_DV2B2b, exp=TRUE, omit.coefs = c("(Intercept)", "SCREENED"),
           model.names = c("White: GT | EV", "White: GT | EV+SC", "Black: GT | EV", "Black: GT | EV+SC"))


# poisson Regression  - DV3 GT, 2015 

fit_DV3W2 <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==0),family=poisson())

summ(fit_DV3W2, confint = TRUE, exp=TRUE)

fit_DV3B2 <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==1),family=poisson())

summ(fit_DV3B2, confint = TRUE, exp=TRUE)


plot_summs(fit_DV3W2, fit_DV3B2, exp=TRUE, omit.coefs = c("(Intercept)"),
           model.names = c("White", "Black"))

plot_summs(fit_DV3W2, fit_DV3B2, exp=TRUE, omit.coefs = c("(Intercept)", "SCREENED"),
           model.names = c("White", "Black"))



# Logistic Regression  - DV3b GT, 2015 | GT_DISCDR


fit_DV3W2b <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                     design= subset(df, BLACK==0 & GT_DISCDR==1), family=poisson())

summ(fit_DV3W2b, confint = TRUE, exp=TRUE)

fit_DV3B2b <- svyglm(GT ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                     design= subset(df, BLACK==1 & GT_DISCDR==1), family=poisson())

summ(fit_DV3B2b, confint = TRUE, exp=TRUE)

#TROUBLE WITH GRAPH?
plot_summs(fit_DV3W2b, fit_DV3B2b, exp=TRUE, omit.coefs = "(Intercept)",
           model.names = c("White", "Black"))




#poisson regression: DV4 - 2015 GT_DISCDR

fit_DV4W2 <- svyglm(GT_DISCDR ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==0),family=poisson())

summ(fit_DV4W2, confint = TRUE, exp=TRUE)

fit_DV4B2 <- svyglm(GT_DISCDR ~ INSURED+EDUCATED+EMPL+INPOV+MAR+REPRODHIST+SCREENED+FAMHISTCANCER+USUAL+HHDELAY_COST+HHDELAY_NOTCOST,
                    design= subset(df, BLACK==1),family=poisson())

summ(fit_DV4B2, confint = TRUE, exp=TRUE)

plot_summs(fit_DV4W2, fit_DV4B2, exp=TRUE, omit.coefs = c("(Intercept)", "SCREENED"),
           model.names = c("White", "Black"))

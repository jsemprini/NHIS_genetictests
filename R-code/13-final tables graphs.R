#Create Tables and Graphs

#Tables:
#DV1 - all - 6 models
summ(fit_DV1, confint = TRUE, exp=TRUE)
summ(fit_DV1p, confint = TRUE, exp=TRUE)
summ(fit_DV1W1, confint = TRUE, exp=TRUE)
summ(fit_DV1B1, confint = TRUE, exp=TRUE)
summ(fit_DV1W2, confint = TRUE, exp=TRUE)
summ(fit_DV1B2, confint = TRUE, exp=TRUE)

#DV2 - all 6 models
summ(fit_DV2, confint = TRUE, exp=TRUE)
summ(fit_DV2p, confint = TRUE, exp=TRUE)
summ(fit_DV2W1, confint = TRUE, exp=TRUE)
summ(fit_DV2B1, confint = TRUE, exp=TRUE)
summ(fit_DV2W2, confint = TRUE, exp=TRUE)
summ(fit_DV2B2, confint = TRUE, exp=TRUE)

#in case adding DV2 conditional on screening
summ(fit_DV2b, confint = TRUE, exp=TRUE)
summ(fit_DV2bp, confint = TRUE, exp=TRUE)
summ(fit_DV2bW1, confint = TRUE, exp=TRUE)
summ(fit_DV2bB1, confint = TRUE, exp=TRUE)
summ(fit_DV2bW2, confint = TRUE, exp=TRUE)
summ(fit_DV2B2, confint = TRUE, exp=TRUE)

#DV4 "DV3 FOR REPORT" - GT_DISCDR
summ(fit_DV4, confint = TRUE, exp=TRUE)
summ(fit_DV4p, confint = TRUE, exp=TRUE)
summ(fit_DV4W1, confint = TRUE, exp=TRUE)
summ(fit_DV4B1, confint = TRUE, exp=TRUE)
summ(fit_DV4W2, confint = TRUE, exp=TRUE)
summ(fit_DV4B2, confint = TRUE, exp=TRUE)

#DV3 "Actually DV4 for report" - GT
summ(fit_DV3, confint = TRUE, exp=TRUE)
summ(fit_DV3p, confint = TRUE, exp=TRUE)
summ(fit_DV3W1, confint = TRUE, exp=TRUE)
summ(fit_DV3B1, confint = TRUE, exp=TRUE)
summ(fit_DV3W2, confint = TRUE, exp=TRUE)
summ(fit_DV3B2, confint = TRUE, exp=TRUE)


#Graphs - dv1
plot_summs(fit_DV1, fit_DV1p, exp=TRUE, omit.coefs = c("(Intercept)", "REPRODHIST", "SCREENED"),
           model.names = c("Logistic", "Poisson"))

plot_summs(fit_DV1W1, fit_DV1W2, fit_DV1B1, fit_DV1B2, exp=TRUE, omit.coefs = c("(Intercept)", "SCREENED"),
           model.names = c("White: Logistic", "White: Poisson", "Black: Logistic", "Black: Poisson"))



#Graphs - dv2
plot_summs(fit_DV2, fit_DV2p, exp=TRUE, omit.coefs = c("(Intercept)", "BLACK","SCREENED:BLACK", "SCREENED"),
           model.names = c("Logistic", "Poisson"))

plot_summs(fit_DV2W1, fit_DV2W2, fit_DV2B1, fit_DV2B2, exp=TRUE, omit.coefs = c("(Intercept)", "SCREENED"),
           model.names = c("White: Logistic", "White: Poisson", "Black: Logistic", "Black: Poisson"))

#Graphs - dv3
plot_summs(fit_DV3, fit_DV3p, exp=TRUE, omit.coefs = c("(Intercept)", "BLACK","INSURED:BLACK", "SCREENED:BLACK", "SCREENED"),
           model.names = c("Logistic", "Poisson"))

plot_summs(fit_DV3W1, fit_DV3W2, fit_DV3B1, fit_DV3B2, exp=TRUE, omit.coefs = c("(Intercept)", "SCREENED"),
           model.names = c("White: Logistic", "White: Poisson", "Black: Logistic", "Black: Poisson"))


#Graphs - dv4
plot_summs(fit_DV4, fit_DV4p, exp=TRUE, omit.coefs = c("(Intercept)", "SCREENED:BLACK"),
           model.names = c("Logistic", "Poisson"))

plot_summs(fit_DV4W1, fit_DV4W2, fit_DV4B1, fit_DV4B2, exp=TRUE, omit.coefs = c("(Intercept)", "SCREENED"),
           model.names = c("White: Logistic", "White: Poisson", "Black: Logistic", "Black: Poisson"))


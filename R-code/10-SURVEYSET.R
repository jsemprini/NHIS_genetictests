data2$ADJWT <- data2$FWEIGHT/3
data22 <- subset(data2, data2$STRATA!=6251)
library(survey)

df <- svydesign(id=~PSU, strat=~STRATA, weight=~ADJWT, data=data22, nest=TRUE)


svytotal(~RACE, df)

#total controls by race with se
CONTROL_RACE = svyby(~YEAR+GEO+H_COVERAGE+MARITAL+EDUC+EMP+POVERTYL,            #variable to estimate
                 ~RACE,          #subgroup variable
                 design = df,
                 FUN = svytotal, #function to use on each subgroup
                 keep.names = FALSE #does not include row.names 
                 #for subgroup variable
) 

knitr::kable(CONTROL_RACE, digits = 2)



#NEXT!
knitr::kable(HEALTH_CONTROL_RACE, digits = 2)

HC_RACE = svyby(~REPRODHIST+SCREENED+REC_SCREEN+FAMHISTCANCER,            #variable to estimate
      ~RACE,          #subgroup variable
      design = df,
      FUN = svytotal, #function to use on each subgroup
      keep.names = FALSE #does not include row.names 
      #for subgroup variable
)

         
knitr::kable(HC_RACE, digits = 2)

#count data for IV's
IV_RACE = svyby(~USUAL+CHANGE_USUAL+DELAY_COST+HHDELAY_COST+HHDELAY_NOTCOST,            #variable to estimate
                ~RACE,          #subgroup variable
                design = df,
                FUN = svytotal, #function to use on each subgroup
                keep.names = FALSE #does not include row.names 
                #for subgroup variable
)


knitr::kable(IV_RACE, digits = 2)

table(data$RACE,data$USUAL)

DV_RACE = svyby(~GT_EVERHEARD+GT,            #variable to estimate
                ~RACE,          #subgroup variable
                design = df,
                FUN = svytotal, #function to use on each subgroup
                keep.names = FALSE #does not include row.names 
                #for subgroup variable
)


knitr::kable(DV_RACE, digits = 2)


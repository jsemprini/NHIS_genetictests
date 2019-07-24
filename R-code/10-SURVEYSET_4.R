library(survey)
#6149 (77942) and 6227 (66481) strata

df4 <- svydesign(id=~PSU, strat=~STRATA, weight=~FWEIGHT, data=data4, nest=TRUE)


svytotal(~RACE, df4)

#total controls by race with se
CONTROL_RACE = svyby(~GEO+H_COVERAGE+MARITAL+EDUC+EMP+POVERTYL,            #variable to estimate
                 ~RACE,          #subgroup variable
                 design = df4,
                 FUN = svytotal, #function to use on each subgroup
                 keep.names = FALSE #does not include row.names 
                 #for subgroup variable
) 

knitr::kable(CONTROL_RACE, digits = 2)



#NEXT!
knitr::kable(HEALTH_CONTROL_RACE, digits = 2)

HC_RACE = svyby(~REPRODHIST+SCREENED+REC_SCREEN+FAMHISTCANCER,            #variable to estimate
      ~RACE,          #subgroup variable
      design = df4,
      FUN = svytotal, #function to use on each subgroup
      keep.names = FALSE #does not include row.names 
      #for subgroup variable
)

         
knitr::kable(HC_RACE, digits = 2)

#count data for IV's
IV_RACE = svyby(~USUAL+DELAY_COST+HHDELAY_COST+HHDELAY_NOTCOST,            #variable to estimate
                ~RACE,          #subgroup variable
                design = df4,
                FUN = svytotal, #function to use on each subgroup
                keep.names = FALSE #does not include row.names 
                #for subgroup variable
)


knitr::kable(IV_RACE, digits = 2)

table(data$RACE,data$USUAL)

DV_RACE = svyby(~GT_EVERHEARD+GT+GT_DISCDR_up+GT_REC_up,            #variable to estimate
                ~RACE,          #subgroup variable
                design = df4,
                FUN = svytotal, #function to use on each subgroup
                keep.names = FALSE #does not include row.names 
                #for subgroup variable
)


knitr::kable(DV_RACE, digits = 2)


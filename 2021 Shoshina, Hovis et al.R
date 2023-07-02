## ------------------------------------------------------------------------------------------
#SE = sqrt((n1 + n2) / (n1 * n2) + (g^2 / (2 * (n1 + n2))))
shoshina_hovis_2021_se_0.6 = sqrt((39 + 43) / (39 * 43) + (-1.76^2 / (2 * (39 + 43))))
shoshina_hovis_2021_se_0.6


## ------------------------------------------------------------------------------------------
# calculate the variance
#Variance = ((Upper CI - Lower CI) / (2 * 1.96))^2

shoshina_hovis_2021_var_0.6 = ((-1.26 - -2.30) / (2 * 1.96))^2
shoshina_hovis_2021_var_0.6


## ------------------------------------------------------------------------------------------
# calculate the weight
#weight = 1/variance

shoshina_hovis_2021_weight_0.6 = 1 / shoshina_hovis_2021_var_0.6
shoshina_hovis_2021_weight_0.6


## ------------------------------------------------------------------------------------------
# Create the data frame
es <- -1.76
se <- shoshina_hovis_2021_se_0.6
variance <- shoshina_hovis_2021_var_0.6
lower_ci <- -2.30
upper_ci <- -1.26
weight <- shoshina_hovis_2021_weight_0.6

shoshina_hovis_2021_es_0.6 <- data.frame(
  "Effect Size" = es,
  "Standard Error" = se,
  "Variance" = variance,
  "Lower CI" = lower_ci,
  "Upper CI" = upper_ci,
  "Weight" = weight
)

# Print the table
print(shoshina_hovis_2021_es_0.6)



## ------------------------------------------------------------------------------------------
shoshina_hovis_2021 <- tibble(es = shoshina_hovis_2021_es_0.6$Effect.Size, se = shoshina_hovis_2021_es_0.6$Standard.Error ) 

shoshina_hovis_2021$study <- "Shoshina et al. 2021a"
shoshina_hovis_2021$method <- "staircase"
shoshina_hovis_2021$medication <- "unmedicated" #all unmedicated
shoshina_hovis_2021$cpz <- NA
shoshina_hovis_2021$task <- "2AFC"
shoshina_hovis_2021$all_SF <- "0.6, 2.8, 4.5, 8.0, 16.0" 
shoshina_hovis_2021$SF <- 0.6
shoshina_hovis_2021$size <- 6.0
shoshina_hovis_2021$BPRS <- NA
shoshina_hovis_2021$motion <- FALSE 
shoshina_hovis_2021$duration <- 0.550
shoshina_hovis_2021$location <- 2.5
shoshina_hovis_2021$lapses <-  FALSE # to avoid fatigue, encouraged to take breaks
shoshina_hovis_2021$calculation_statistic <- "Hedges' g and 95%CI"  
shoshina_hovis_2021$calculation_data <- "reported" 
shoshina_hovis_2021$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

shoshina_hovis_2021


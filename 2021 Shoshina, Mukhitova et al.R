## ------------------------------------------------------------------------------------------
shoshina_mukhitova_2021_es_low <- esc_mean_sd(grp1m =17.8 , grp2m = 12.06, 
            grp1sd = 5.3, grp2sd = 5.3, 
            grp1n = 30, grp2n = 68, 
            es.type = "g")
shoshina_mukhitova_2021_es_low


## ------------------------------------------------------------------------------------------
shoshina_mukhitova_2021_es_medium <- esc_mean_sd(grp1m = 21.4, grp2m = 12.6,
            grp1sd = 8.1, grp2sd = 5.5, 
            grp1n = 30, grp2n = 68, 
            es.type = "g")
shoshina_mukhitova_2021_es_medium


## ------------------------------------------------------------------------------------------
shoshina_mukhitova_2021_es_high <- esc_mean_sd(grp1m = 7.9, grp2m = 4.2, 
            grp1sd = 4.6, grp2sd = 2.9, 
            grp1n = 30, grp2n = 68, 
            es.type = "g")
shoshina_mukhitova_2021_es_high


## ------------------------------------------------------------------------------------------
shoshina_mukhitova_2021 <- tibble(es = shoshina_mukhitova_2021_es_low$es, se = shoshina_mukhitova_2021_es_low$se ) 

shoshina_mukhitova_2021$study <- "Shoshina et al. 2021b"
shoshina_mukhitova_2021$method <- "staircase"
shoshina_mukhitova_2021$medication <- "medicated" #all medicated
shoshina_mukhitova_2021$cpz <- NA
shoshina_mukhitova_2021$task <- "2AFC"
shoshina_mukhitova_2021$all_SF <- "0.4, 0.6, 1.0, 4.0, 10.0" 
shoshina_mukhitova_2021$SF <- 0.4
shoshina_mukhitova_2021$size <- NA
shoshina_mukhitova_2021$BPRS <- NA
shoshina_mukhitova_2021$motion <- FALSE 
shoshina_mukhitova_2021$duration <- NA
shoshina_mukhitova_2021$location <- 0
shoshina_mukhitova_2021$lapses <-  FALSE
shoshina_mukhitova_2021$calculation_statistic <- "m and sd, low SF (0.4 and 0.6)"  
shoshina_mukhitova_2021$calculation_data <- "reported" 
shoshina_mukhitova_2021$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

shoshina_mukhitova_2021


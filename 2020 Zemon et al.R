## ------------------------------------------------------------------------------------------
mean_HC_zemon2020_sf0.5_duration33 <- 123.5024
sd_HC_zemon2020_sf0.5_duration33 <- 48.60487499

mean_SCZ_zemon2020_sf0.5_duration33 <- 90.47882353
sd_SCZ_zemon2020_sf0.5_duration33 <- 44.88846581


## ------------------------------------------------------------------------------------------
mean_HC_zemon2020_sf0.5_duration500 <- 115.2069333
sd_HC_zemon2020_sf0.5_duration500 <- 38.74006868

mean_SCZ_zemon2020_sf0.5_duration500 <- 82.20808824
sd_SCZ_zemon2020_sf0.5_duration500 <- 41.06718054



## ------------------------------------------------------------------------------------------
zemon_2020_es_duration33 <- esc_mean_sd(grp1m = mean_HC_zemon2020_sf0.5_duration33,
                                        grp2m = mean_SCZ_zemon2020_sf0.5_duration33,
                                        grp1sd = sd_HC_zemon2020_sf0.5_duration33,
                                        grp2sd = sd_SCZ_zemon2020_sf0.5_duration33,
                                        grp1n = 75,
                                        grp2n = 68, 
            es.type = "g")
zemon_2020_es_duration33


## ------------------------------------------------------------------------------------------
zemon_2020_es_duration500 <- esc_mean_sd(grp1m = mean_HC_zemon2020_sf0.5_duration500,
                                        grp2m = mean_SCZ_zemon2020_sf0.5_duration500,
                                        grp1sd = sd_HC_zemon2020_sf0.5_duration500,
                                        grp2sd = sd_SCZ_zemon2020_sf0.5_duration500,
                                        grp1n = 75,
                                        grp2n = 68, 
            es.type = "g")
zemon_2020_es_duration500


## ------------------------------------------------------------------------------------------
zemon_2020 <- tibble(es = zemon_2020_es_duration500$es, se = zemon_2020_es_duration500$se ) 

zemon_2020$study <- "Zemon et al. 2020"
zemon_2020$method <- "up-down transformed response rule"
zemon_2020$medication <- "medicated" #all medicated
zemon_2020$cpz <- NA
zemon_2020$task <- "2AFC"
zemon_2020$all_SF <- "0.5, 1.0, 4.0, 7.0, 21.0" 
zemon_2020$SF <- 0.5
zemon_2020$size <- "6x6"
zemon_2020$BPRS <- NA
zemon_2020$motion <- FALSE 
zemon_2020$duration <- "0.033 and 0.500"
zemon_2020$location <- 0
zemon_2020$lapses <-  FALSE
zemon_2020$calculation_statistic <- "m and sd"  
zemon_2020$calculation_data <- "raw data" 
zemon_2020$calculation_certainty <- "sure" #scale is "sure", "unsure", "very 

zemon_2020


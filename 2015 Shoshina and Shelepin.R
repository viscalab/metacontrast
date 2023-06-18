## ----------------------------------------------------------------------------------------------------------------------------------------
#schizophrenia group: is the full group, no pooling needed

shoshina_and_shelepin_2015_es_sf0.4 <- esc_mean_sd(grp1m = 15.2, grp2m = 10.1,  
            grp1sd = 12.0, grp2sd = 8.1, 
            grp1n = 43, grp2n = 20, 
            es.type = "g")
shoshina_and_shelepin_2015_es_sf0.4


## ----------------------------------------------------------------------------------------------------------------------------------------
shoshina_and_shelepin_2015_es_sf3.6 <- esc_mean_sd(grp1m = 73.4, grp2m = 64.4,  # group mean
            grp1sd = 39.8, grp2sd = 40.7, # group sd
            grp1n = 43, grp2n = 20, 
            es.type = "g")
shoshina_and_shelepin_2015_es_sf3.6


## ----------------------------------------------------------------------------------------------------------------------------------------
shoshina_and_shelepin_2015_es_sf17.9 <- esc_mean_sd(grp1m = 16.4, grp2m = 16.1,  # group mean
            grp1sd = 13.1, grp2sd = 13.4, # group sd
            grp1n = 43, grp2n = 20, 
            es.type = "g")
shoshina_and_shelepin_2015_es_sf17.9


## ----------------------------------------------------------------------------------------------------------------------------------------
shoshina_and_shelepin_2015 <- tibble(es = shoshina_and_shelepin_2015_es_sf0.4$es, se = shoshina_and_shelepin_2015_es_sf0.4$se ) 

shoshina_and_shelepin_2015$study <- "Shoshina and Shelepin. 2013"
shoshina_and_shelepin_2015$method <- "staircase"
shoshina_and_shelepin_2015$medication <- "medicated" #all medicated
shoshina_and_shelepin_2015$cpz <- NA
shoshina_and_shelepin_2015$task <- "2IFC"
shoshina_and_shelepin_2015$all_SF <- "0.4, 3.6, 17.9"
shoshina_and_shelepin_2015$SF <- 0.4
shoshina_and_shelepin_2015$size <- NA
shoshina_and_shelepin_2015$BPRS <- NA
shoshina_and_shelepin_2015$motion <- FALSE 
shoshina_and_shelepin_2015$duration <- NA 
shoshina_and_shelepin_2015$location <- NA
shoshina_and_shelepin_2015$lapses <- FALSE 
shoshina_and_shelepin_2015$calculation_statistic <- "m and sd"  
shoshina_and_shelepin_2015$calculation_data <- "reported" 
shoshina_and_shelepin_2015$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

shoshina_and_shelepin_2015


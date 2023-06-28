## -----------------------------------------------------------------------------------------
shoshina_2021_es_low <- esc_mean_se(grp1m = 15.2, grp2m = sz_0.4_pooled_shoshina2013$Mpooled, 
            grp1se = 12.0, grp2se = sz_0.4_pooled_shoshina2013$SDpooled, 
            grp1n = 20, grp2n = sz_0.4_pooled_shoshina2013$Npooled, 
            es.type = "g")
shoshina_2021_es_low


## -----------------------------------------------------------------------------------------
sz_3.6_pooled_shoshina2013 <- pool.groups(n1 = 25,   # sample size group 1
            n2 = 20,   # sample size group 2
            m1 = 65.5,  # mean group 1
            m2 = 63.6,    # mean group 2
            sd1 = 44.8,   # sd group 1
            sd2 = 34.1) # sd group2 
sz_3.6_pooled_shoshina2013


## -----------------------------------------------------------------------------------------
shoshina_2013_es_sf3.6 <- esc_mean_sd(grp1m = 73.4, grp2m = sz_3.6_pooled_shoshina2013$Mpooled,
            grp1sd = 39.8, grp2sd = sz_3.6_pooled_shoshina2013$SDpooled, 
            grp1n = 20, grp2n = sz_3.6_pooled_shoshina2013$Npooled, 
            es.type = "g")
shoshina_2013_es_sf3.6


## -----------------------------------------------------------------------------------------
sz_17.9_pooled_shoshina2013 <- pool.groups(n1 = 25,   # sample size group 1
            n2 = 20,   # sample size group 2
            m1 = 17.5,  # mean group 1
            m2 = 14.5,    # mean group 2
            sd1 = 15.4,   # sd group 1
            sd2 = 10.7) # sd group2 
sz_17.9_pooled_shoshina2013


## -----------------------------------------------------------------------------------------
shoshina_2013_es_sf17.9 <- esc_mean_sd(grp1m = 16.4, grp2m = sz_17.9_pooled_shoshina2013$Mpooled, 
            grp1sd = 3-13.07, grp2sd = sz_17.9_pooled_shoshina2013$SDpooled, 
            grp1n = 20, grp2n = sz_17.9_pooled_shoshina2013$Npooled, 
            es.type = "g")
shoshina_2013_es_sf17.9


## -----------------------------------------------------------------------------------------
shoshina_2021 <- tibble(es = $es, se = $se ) 

shoshina_2021$study <- "Shoshina et al. 2021"
shoshina_2021$method <- "staircase"
shoshina_2021$medication <- "medicated" #all medicated
shoshina_2021$cpz <- NA
shoshina_2021$task <- "2AFC"
shoshina_2021$all_SF <- "0.4, 0.6, 1.0, 4.0, 10.0" 
shoshina_2021$SF <- "0.4 and 0.6"
shoshina_2021$size <- NA
shoshina_2021$BPRS <- NA
shoshina_2021$motion <- FALSE 
shoshina_2021$duration <- NA
shoshina_2021$location <- 0
shoshina_2021$lapses <-  FALSE
shoshina_2021$calculation_statistic <- ""  
shoshina_2021$calculation_data <- "" 
shoshina_2021$calculation_certainty <- "" #scale is "sure", "unsure", "very unsure"

shoshina_2021


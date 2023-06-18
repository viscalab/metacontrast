## -----------------------------------------------------------------------------------------------------
sz_0.4_pooled_shoshina2013 <- pool.groups(n1 = 25,   # sample size group 1
            n2 = 20,   # sample size group 2
            m1 = 9.07,  # mean group 1
            m2 = 11.4,    # mean group 2
            sd1 = 6.6,   # sd group 1
            sd2 = 9.1) # sd group2 
sz_0.4_pooled_shoshina2013


## -----------------------------------------------------------------------------------------------------
shoshina_2013_es_sf0.4 <- esc_mean_sd(grp1m = 15.2, grp2m = sz_0.4_pooled_shoshina2013$Mpooled, 
            grp1sd = 12.0, grp2sd = sz_0.4_pooled_shoshina2013$SDpooled, 
            grp1n = 20, grp2n = sz_0.4_pooled_shoshina2013$Npooled, 
            es.type = "g")
shoshina_2013_es_sf0.4


## -----------------------------------------------------------------------------------------------------
sz_3.6_pooled_shoshina2013 <- pool.groups(n1 = 25,   # sample size group 1
            n2 = 20,   # sample size group 2
            m1 = 65.5,  # mean group 1
            m2 = 63.6,    # mean group 2
            sd1 = 44.8,   # sd group 1
            sd2 = 34.1) # sd group2 
sz_3.6_pooled_shoshina2013


## -----------------------------------------------------------------------------------------------------
shoshina_2013_es_sf3.6 <- esc_mean_sd(grp1m = 73.4, grp2m = sz_3.6_pooled_shoshina2013$Mpooled,
            grp1sd = 39.8, grp2sd = sz_3.6_pooled_shoshina2013$SDpooled, 
            grp1n = 20, grp2n = sz_3.6_pooled_shoshina2013$Npooled, 
            es.type = "g")
shoshina_2013_es_sf3.6


## -----------------------------------------------------------------------------------------------------
sz_17.9_pooled_shoshina2013 <- pool.groups(n1 = 25,   # sample size group 1
            n2 = 20,   # sample size group 2
            m1 = 17.5,  # mean group 1
            m2 = 14.5,    # mean group 2
            sd1 = 15.4,   # sd group 1
            sd2 = 10.7) # sd group2 
sz_17.9_pooled_shoshina2013


## -----------------------------------------------------------------------------------------------------
shoshina_2013_es_sf17.9 <- esc_mean_sd(grp1m = 16.4, grp2m = sz_17.9_pooled_shoshina2013$Mpooled, 
            grp1sd = 3-13.07, grp2sd = sz_17.9_pooled_shoshina2013$SDpooled, 
            grp1n = 20, grp2n = sz_17.9_pooled_shoshina2013$Npooled, 
            es.type = "g")
shoshina_2013_es_sf17.9


## -----------------------------------------------------------------------------------------------------
shoshina_2013 <- tibble(es = shoshina_2013_es_sf0.4$es, se = shoshina_2013_es_sf0.4$se ) 

shoshina_2013$study <- "Shoshina et al. 2013"
shoshina_2013$method <- "ladder"
shoshina_2013$medication <- "medicated" #all medicated
shoshina_2013$cpz <- NA
shoshina_2013$task <- "2IFC"
shoshina_2013$all_SF <- "0.4, 3.6, 17.9"
shoshina_2013$SF <- 0.4
shoshina_2013$size <- "4.48 x 3.36"
shoshina_2013$BPRS <- NA
shoshina_2013$motion <- FALSE 
shoshina_2013$duration <- NA 
shoshina_2013$location <- NA
shoshina_2013$lapses <- FALSE 
shoshina_2013$calculation_statistic <- "m and sd"  
shoshina_2013$calculation_data <- "reported, pooling" 
shoshina_2013$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

shoshina_2013


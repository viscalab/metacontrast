## ----------------------------------------------------------------------------------------------------------------------------------------
schwartz_1987_es_f <- esc_f(f = 1.77,      # F value of the one-way anova
      grp1n = 19,   # sample size of group 1 
      grp2n = 15,   # sample size of group 2
      es.type = "g") # convert to Hedges' g; use "d" for SMD
schwartz_1987_es_f


## ----------------------------------------------------------------------------------------------------------------------------------------
schwartz_1987_es_f_sf <- esc_f(f = 2.51,      # F value of the one-way anova
      grp1n = 19,   # sample size of group 1 
      grp2n = 15,   # sample size of group 2
      es.type = "g") # convert to Hedges' g; use "d" for SMD
schwartz_1987_es_f_sf


## ----------------------------------------------------------------------------------------------------------------------------------------
# SEM = (Upper limit - Lower limit) / 2
# SEM = Upper Limit - Mean
SEM_sz_sf0.9_schwartz1987 = 85.67823213109716 - 80.15773063582003

# SEM = Mean - Lower limit
SEM_c_sf0.9_schwartz1987 = 76.40378395835765 - 71.98737669712817

# SEM = se

# calculate es
schwartz_1987_es_scrap <- esc_mean_se(grp1m = 76.40378395835765, grp2m = 80.15773063582003, 
            grp1se = SEM_c_sf0.9_schwartz1987, grp2se = SEM_sz_sf0.9_schwartz1987, 
            grp1n = 15, grp2n = 19, 
            es.type = "g")
schwartz_1987_es_scrap




## ----------------------------------------------------------------------------------------------------------------------------------------
schwartz_1987 <- tibble(es = schwartz_1987_es_scrap$es, se = schwartz_1987_es_scrap$se ) 

schwartz_1987$study <- "Schwartz et al. 1987"
schwartz_1987$method <- "staircase"
schwartz_1987$medication <- "medicated" #all medicated
schwartz_1987$cpz <- NA
schwartz_1987$task <- "flicker/pattern detection"
schwartz_1987$all_SF <- "0.9, 3.8, 15"
schwartz_1987$SF <- 0.9
schwartz_1987$size <- NA
schwartz_1987$BPRS <- NA
schwartz_1987$motion <- 0.8 # in Hz, 0Hz is not depicted in graphs 
schwartz_1987$duration <- NA
schwartz_1987$location <- 0
schwartz_1987$lapses <- FALSE 
schwartz_1987$calculation_statistic <- "m and se"  
schwartz_1987$calculation_data <- "scrapping" 
schwartz_1987$calculation_certainty <- "unsure" #scale is "sure", "unsure", "very unsure"

schwartz_1987


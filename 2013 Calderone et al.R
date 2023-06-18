## ----------------------------------------------------------------------------------------------------------------------------------------
calderone_2013_es_f <- esc_f(f = 11.769,      # F value of the one-way anova
      grp1n = 15,   # sample size of group 1 
      grp2n = 15,   # sample size of group 2
      es.type = "g") # convert to Hedges' g; use "d" for SMD
calderone_2013_es_f


## ----------------------------------------------------------------------------------------------------------------------------------------
calderone_2013_es_fmri_sf0.5 <- esc_mean_sd(grp1m = 54.69, grp2m = 50.70,  # group mean
            grp1sd = 17.03, grp2sd = 19.15, # group sd
            grp1n = 10, grp2n = 14, 
            es.type = "g")
calderone_2013_es_fmri_sf0.5


## ----------------------------------------------------------------------------------------------------------------------------------------
calderone_2013 <- tibble(es = calderone_2013_es_f$es, se = calderone_2013_es_f$se ) 

calderone_2013$study <- "Caldarone et al. 2013"
calderone_2013$method <- "up-down transform rule" #UDTR
calderone_2013$medication <- "medicated" #all medicated
calderone_2013$cpz <- 783.33
calderone_2013$task <- "2AFC" #2AFC mentioned in the article
calderone_2013$all_SF <- "0.5, 4"
calderone_2013$SF <- 0.5
calderone_2013$size <- "6 x 6" 
calderone_2013$BPRS <- NA
calderone_2013$motion <- FALSE 
calderone_2013$duration <- "0.032 for SF=0.5, 0.5 for SF=4" 
calderone_2013$location <- NA
calderone_2013$lapses <- FALSE 
calderone_2013$calculation_statistic <- "f-statistic"  
calderone_2013$calculation_data <- "reported" 
calderone_2013$calculation_certainty <- "very unsure" #scale is "sure", "unsure", "very unsure"

calderone_2013


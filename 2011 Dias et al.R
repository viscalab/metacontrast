## ----------------------------------------------------------------------------------------------------------------------------------------
dias_2011_es_f <- esc_f(f = 11.3,      # F value of the one-way anova
      grp1n = 20,   # sample size of group 1 
      grp2n = 9,   # sample size of group 2
      es.type = "g") # convert to Hedges' g; use "d" for SMD
dias_2011_es_f


## ----------------------------------------------------------------------------------------------------------------------------------------
dias_2011_es_sf0.5 <- esc_f(f = 10.7,      # F value of the one-way anova
      grp1n = 20,   # sample size of group 1 
      grp2n = 9,   # sample size of group 2
      es.type = "g") # convert to Hedges' g; use "d" for SMD
dias_2011_es_sf0.5


## ----------------------------------------------------------------------------------------------------------------------------------------
dias_2011 <- tibble(es = dias_2011_es_sf0.5$es, se = dias_2011_es_sf0.5$se ) 

dias_2011$study <- "Dias et al. 2011"
dias_2011$method <- "up-down transform rule"  
dias_2011$medication <- "medicated" #all medicated
dias_2011$cpz <- 1241.3
dias_2011$task <- "2AFC" #2AFC mentioned in the article
dias_2011$all_SF <- "0.5, 7, 21"
dias_2011$SF <- 0.5
dias_2011$size <- "5.7 x 5.7" 
dias_2011$BPRS <- 40.0
dias_2011$motion <- FALSE 
dias_2011$duration <- 0.032 
dias_2011$location <- NA
dias_2011$lapses <- FALSE 
dias_2011$calculation_statistic <- "f-statistic"  
dias_2011$calculation_data <- "reported" 
dias_2011$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

dias_2011


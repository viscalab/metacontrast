## -----------------------------------------------------------------------------------------------------
butler_2005_es <- esc_f(f = 81.6,      # F value of the one-way anova
      grp1n = 33,   # sample size of group 1 
      grp2n = 21,   # sample size of group 2
      es.type = "g") # convert to Hedges' g; use "d" for SMD
butler_2005_es


## -----------------------------------------------------------------------------------------------------
butler_2005 <- tibble( es = NA, se = NA ) 

butler_2005$study <- "Butler et al. 2005"
butler_2005$method <- "up-and-down transformed response"  
butler_2005$medication <- "medicated" #all medicated
butler_2005$cpz <- 1194.0 
butler_2005$task <- "2AFC" #2AFC mentioned in the article
butler_2005$all_SF <- "0.5, 1.0, 2.0, 4.0, 7.0, 10.0, 21.0"
butler_2005$SF <- 0.5
butler_2005$size <- "8 x 8" 
butler_2005$BPRS <- 36.9
butler_2005$motion <- FALSE 
butler_2005$duration <- 0.032 
butler_2005$location <- 5.7
butler_2005$lapses <- TRUE # experimenter (not participant) pressed the buttons to indicate whether stimulus on left or right side 
butler_2005$calculation_statistic <- "Mailed for data, waiting"  
butler_2005$calculation_data <- "mailed for data, waiting" 
butler_2005$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

butler_2005


## ----------------------------------------------------------------------------------------------------------------------------------------
butler_2009_es_f <- esc_f(f = 7.0,      # F value of the one-way anova
      grp1n = 20,   # sample size of group 1 
      grp2n = 17,   # sample size of group 2
      es.type = "g") # convert to Hedges' g; use "d" for SMD
butler_2009_es_f


## ----------------------------------------------------------------------------------------------------------------------------------------
butler_2009_es_t_0.5 <- esc_t(t = 3.0, # t-statistic
      grp1n = 20,
      grp2n = 17,
      es.type = "g")
butler_2009_es_t_0.5


## ----------------------------------------------------------------------------------------------------------------------------------------
butler_2009_es_t_7 <- esc_t(t = 0.6, # t-statistic
      grp1n = 20,
      grp2n = 17,
      es.type = "g")
butler_2009_es_t_7


## ----------------------------------------------------------------------------------------------------------------------------------------
butler_2009_es_t_21 <- esc_t(t = 1.0, # t-statistic
      grp1n = 20,
      grp2n = 17,
      es.type = "g")
butler_2009_es_t_21


## ----------------------------------------------------------------------------------------------------------------------------------------
butler_2009 <- tibble( es = butler_2009_es_t_0.5$es, se = butler_2009_es_t_0.5$se ) 

butler_2009$study <- "Butler et al. 2009"
butler_2009$method <- "up-and-down transformed response"  
butler_2009$medication <- "medicated" #all medicated
butler_2009$cpz <- 1195.3 
butler_2009$task <- "2AFC" #2AFC mentioned in the article
butler_2009$all_SF <- "0.5, 7.0, 21.0"
butler_2009$SF <- 0.5
butler_2009$size <- "5.7 x 5.7" 
butler_2009$BPRS <- 45.5
butler_2009$motion <- FALSE 
butler_2009$duration <- 0.032 
butler_2009$location <- 0
butler_2009$lapses <- FALSE
butler_2009$calculation_statistic <- "t-statistic"  
butler_2009$calculation_data <- "reported" 
butler_2009$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

butler_2009


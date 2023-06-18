## ----------------------------------------------------------------------------------------------------------------------------------------
chen_2006_es <- esc_mean_sd(grp1m = 0.0036, grp2m = 0.0039,  # group mean
            grp1sd = 0.0020, grp2sd = 0.0027, # group sd
            grp1n = 25, grp2n = 25, 
            es.type = "g")
chen_2006_es



## ----------------------------------------------------------------------------------------------------------------------------------------
chen_2006_es_t <- esc_t(t = -0.49, # t-statistic
      grp1n = 25,
      grp2n = 25,
      es.type = "g")
chen_2006_es_t



## ----------------------------------------------------------------------------------------------------------------------------------------
chen_2006 <- tibble( es = chen_2006_es$es, se = chen_2006_es$se ) 
chen_2006

chen_2006$study <- "Chen et al. 2006"
chen_2006$method <- "staircase"  
chen_2006$medication <- "medicated and unmedicated" #n=24 medicated, n=1 unmedicated
chen_2006$cpz <- 388  #in mg
chen_2006$task <- "2AFC" 
chen_2006$all_SF <- 0.5
chen_2006$SF <- 0.5
chen_2006$size <- 19
chen_2006$BPRS <- 43
chen_2006$motion <- TRUE 
chen_2006$duration <- 0.3 
chen_2006$location <- 0 
chen_2006$lapses <- FALSE
chen_2006$calculation_statistic <- "m and sd"  
chen_2006$calculation_data <- "reported" 
chen_2006$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

chen_2006


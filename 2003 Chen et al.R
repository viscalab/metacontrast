## ----------------------------------------------------------------------------------------------------------------------------------------
chen_2003_es <- esc_mean_sd(grp1m = 0.0036, grp2m = 0.0025, 
            grp1sd = 0.0039, grp2sd = 0.0016, 
            grp1n = 45, grp2n = 39, 
            es.type = "g")
chen_2003_es


## ----------------------------------------------------------------------------------------------------------------------------------------
chen_2003_t_statistic <- esc_t(t = 2.04,
      grp1n = 45,
      grp2n = 39,
      es.type = "g")
chen_2003_t_statistic


## ----------------------------------------------------------------------------------------------------------------------------------------
chen_2003 <- tibble( es = chen_2003_es$es, se = chen_2003_es$se ) 

chen_2003$study <- "Chen et al. 2003"
chen_2003$method <- "staircase" # adaptative, mc, ... (Do they use a special method to display contrast?) 
chen_2003$medication <- "medicated and unmedicated" #n=39 medicated, n=6 unmedicated
chen_2003$cpz <- "NA"  #Dose is not mentioned
chen_2003$task <- "2IFC" #2IFC means two interval forced choice
chen_2003$all_SF <- 0.5
chen_2003$SF <- 0.5
chen_2003$size <- 10 #size of the stimulus presented
chen_2003$BPRS <- 42.4
chen_2003$motion <- TRUE #is grating moving?
chen_2003$duration <- 0.3 #Duration of the stimulus in seconds
chen_2003$location <- 0 #Where the stimulus was presented in degrees of visual angle (fixation = 0)
chen_2003$lapses <- FALSE  #In lapses, we can include whether they control for lapses (TRUE) or not (FALSE).
chen_2003$calculation_statistic <- "m and sd"  #"t-test", "m and sd"
chen_2003$calculation_data <- "reported" #"scrapping", "reported", "raw"
chen_2003$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

chen_2003


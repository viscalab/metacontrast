## -----------------------------------------------------------------------------------------------------
oDonnell_2006_es_f <- esc_f(f = 9.67,      # F value of the one-way anova
      grp1n = 40,   # sample size of group 1 
      grp2n = 24,   # sample size of group 2
      es.type = "g") # convert to Hedges' g; use "d" for SMD
oDonnell_2006_es_f


## -----------------------------------------------------------------------------------------------------
SZ_pooled_oDonnell2006 <- pool.groups(n1 = 14,   # sample size group 1
            n2 = 10,   # sample size group 2
            m1 = 1.31,  # mean group 1
            m2 = 1.45,    # mean group 2
            sd1 = 0.53,   # sd group 1
            sd2 = 0.45) # sd group2 
SZ_pooled_oDonnell2006


## -----------------------------------------------------------------------------------------------------
oDonnell_2006_es <- esc_mean_sd(grp1m = 1.74, grp2m = SZ_pooled_oDonnell2006$Mpooled,  # group mean
            grp1sd = 0.45, grp2sd = SZ_pooled_oDonnell2006$SDpooled, # group sd
            grp1n = 40, grp2n = SZ_pooled_oDonnell2006$Npooled, 
            es.type = "g")
oDonnell_2006_es


## -----------------------------------------------------------------------------------------------------
oDonnell_2006 <- tibble( es = oDonnell_2006_es$es, se = oDonnell_2006_es$se ) 
oDonnell_2006

oDonnell_2006$study <- "O'Donnell et al. 2006"
oDonnell_2006$method <- "staircase" 
oDonnell_2006$medication <- "medicated and unmedicated" #n=14 medicated, n=10 unmedicated
oDonnell_2006$cpz <- NA  #Dose is not mentioned
oDonnell_2006$task <- "2IFC" # 2 interval forced choice 
oDonnell_2006$all_SF <- 9.9
oDonnell_2006$SF <- 9.9
oDonnell_2006$size <- 8.37
oDonnell_2006$BPRS <- NA
oDonnell_2006$motion <- FALSE 
oDonnell_2006$duration <- 1.0 
oDonnell_2006$location <- 2.9 
oDonnell_2006$lapses <- FALSE  
oDonnell_2006$calculation_statistic <- "m and sd"  
oDonnell_2006$calculation_data <- "reported, pooling sd" 
oDonnell_2006$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

oDonnell_2006


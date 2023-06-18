## ----------------------------------------------------------------------------------------------------------------------------------------
#SEM = (upper limit - lower limit) / 2
SEM_c_cadenhead2013 = (1.9211409988770967 - 1.8582215422333028) / 2
SEM_sz_cadenhead2013 = (1.7911073271366271 - 1.723993304054895) / 2

# SEM = se

# calculate es
cadenhead_2013_es <- esc_mean_se(grp1m = 1.8917784577666974, grp2m = 1.7617449780411711, 
            grp1se = SEM_c_cadenhead2013, grp2se = SEM_sz_cadenhead2013, 
            grp1n = 53, grp2n = 46, 
            es.type = "g")
cadenhead_2013_es



## ----------------------------------------------------------------------------------------------------------------------------------------
cadenhead_2013 <- tibble( es = cadenhead_2013_es$es, se = cadenhead_2013_es$se ) 
cadenhead_2013

cadenhead_2013$study <- "Cadenhead et al. 2013"
cadenhead_2013$method <- "constant stimuli paradigm"  
cadenhead_2013$medication <- "medicated and unmedicated" #n=48 medicated, n=5 unmedicated
cadenhead_2013$cpz <- NA  
cadenhead_2013$task <- "2AFC" 
cadenhead_2013$all_SF <- 1.22
cadenhead_2013$SF <- 1.22
cadenhead_2013$size <- 1.64
cadenhead_2013$BPRS <- NA
cadenhead_2013$motion <- TRUE 
cadenhead_2013$duration <- 0.12 
cadenhead_2013$location <- 2.28 # 2.28° left or right from fixation cross 
cadenhead_2013$lapses <- FALSE  
cadenhead_2013$calculation_statistic <- "m and se"  
cadenhead_2013$calculation_data <- "scrapping, calculate se" 
cadenhead_2013$calculation_certainty <- "unsure" #scale is "sure", "unsure", "very unsure"

cadenhead_2013


## ----------------------------------------------------------------------------------------------------------------------------------------
# SEM = (upper limit - lower limit) / 2
SEM_c_slaghuis1998 = (2.119565248940074 - 2.0783515326166953) / 2
SEM_sz_pos_slaghuis1998 = (2.0593297950636993 - 1.9800724585099876) / 2
SEM_sz_neg_slaghuis1998 = (1.859601550757238 - 1.739130497880148) / 2

# calculate sd of each group (need it for pooling)
# SD = SEM * sqrt(n)
sd_c_slaghuis1998 = SEM_c_slaghuis1998 * sqrt(15)
sd_sz_pos_slaghuis1998 = SEM_sz_pos_slaghuis1998 * sqrt(15)
sd_sz_neg_slaghuis1998 = SEM_sz_neg_slaghuis1998 * sqrt(15)

# pool sz (pos and neg)
SZ_pooled_slaghuis1998 <- pool.groups(n1 = 15, n2 = 15,   
            m1 = 2.0200000234374986, m2 = 1.7927999857031256,    
            sd1 = sd_sz_pos_slaghuis1998, sd2 = sd_sz_neg_slaghuis1998)  
SZ_pooled_slaghuis1998

# calculate es (ctrl and pooled sz)
slaghuis_1998_es <- esc_mean_sd(grp1m = 2.0968000196874987, grp2m = SZ_pooled_slaghuis1998$Mpooled, 
            grp1sd = sd_c_slaghuis1998, grp2sd = SZ_pooled_slaghuis1998$SDpooled, 
            grp1n = 15, grp2n = SZ_pooled_slaghuis1998$Npooled, 
            es.type = "g")
slaghuis_1998_es


## ----------------------------------------------------------------------------------------------------------------------------------------
slaghuis_1998 <- tibble( es = slaghuis_1998_es$es, se = slaghuis_1998_es$se ) 

slaghuis_1998$study <- "Slaghuis. 1998"
slaghuis_1998$method <- "staircase"  
slaghuis_1998$medication <- "medicated" #all medicated
slaghuis_1998$cpz <- 221.65  #Dose is combined mean of group Positive (201.1) and Negative (242.2)
slaghuis_1998$task <- "2AFC" #2AFC mentioned in the article
slaghuis_1998$all_SF <- "0.5, 1, 2, 4, 8 and 12"
slaghuis_1998$SF <- 0.5 
slaghuis_1998$size <- "4.03 x 3.36" #size of the stimulus presented
slaghuis_1998$BPRS <- NA
slaghuis_1998$motion <- FALSE 
slaghuis_1998$duration <- "0.4 or 0.04" #Article says: 40ms or 400ms
slaghuis_1998$location <- 0 
slaghuis_1998$lapses <- TRUE  #If observer noticed a drift in attention, the trial was repeated.
slaghuis_1998$calculation_statistic <- "m and sd"  
slaghuis_1998$calculation_data <- "scrapping, calculate SEM, calculate sd, pooling"
slaghuis_1998$calculation_certainty <- "unsure" #scale is "sure", "unsure", "very unsure"

slaghuis_1998


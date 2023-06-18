## ----------------------------------------------------------------------------------------------------------------------------------------
# Calculate se per group
# SE = (upper limit - lower limit) / 2
se_c_slaghuis2004 = (4.8898756509106 - 4.694493924834401) / 2
se_sz_pos_slaghuis2004 = (4.783303726407286 - 4.570159877400657) / 2
se_sz_neg_slaghuis2004 = (4.099467075331143 - 3.8330372640728574) / 2

# calculate sd of each group (need it for pooling)
# SD = SE * sqrt(n)
sd_c_slaghuis2004 = se_c_slaghuis2004 * sqrt(14)
sd_sz_pos_slaghuis2004 = se_sz_pos_slaghuis2004 * sqrt(14)
sd_sz_neg_slaghuis2004 = se_sz_neg_slaghuis2004 * sqrt(14)

# pool sz (pos and neg)
SZ_pooled_slaghuis2004 <- pool.groups(n1 = 14, n2 = 14,   
            m1 = 4.6856126600993715, m2 = 3.9307283303807714,    
            sd1 = sd_sz_pos_slaghuis2004, sd2 = sd_sz_neg_slaghuis2004)  
SZ_pooled_slaghuis2004

# calculate es (ctrl and pooled sz)
slaghuis_2004_es <- esc_mean_sd(grp1m = 4.783303726407286, grp2m = SZ_pooled_slaghuis2004$Mpooled, 
            grp1sd = sd_c_slaghuis2004, grp2sd = SZ_pooled_slaghuis2004$SDpooled, 
            grp1n = 14, grp2n = SZ_pooled_slaghuis2004$Npooled, 
            es.type = "g")
slaghuis_2004_es



## ----------------------------------------------------------------------------------------------------------------------------------------
slaghuis_2004 <- tibble( es = slaghuis_2004_es$es, se = slaghuis_2004_es$se ) 

slaghuis_2004$study <- "Slaghuis. 2004"
slaghuis_2004$method <- "staircase"  
slaghuis_2004$medication <- "medicated" #all medicated
slaghuis_2004$cpz <- 215.65  #Dose is combined mean of group Positive (183.9) and Negative (247.4)
slaghuis_2004$task <- "2AFC" #2AFC mentioned in the article
slaghuis_2004$all_SF <- "0.5, 2.0, 4.0, 8.0"
slaghuis_2004$SF <- 0.5
slaghuis_2004$size <- "7.12 x 5.71" 
slaghuis_2004$BPRS <- NA
slaghuis_2004$motion <- FALSE 
slaghuis_2004$duration <- 0.5 
slaghuis_2004$location <- 0 
slaghuis_2004$lapses <- FALSE 
slaghuis_2004$calculation_statistic <- "m and sd"  
slaghuis_2004$calculation_data <- "scrapping, calculate se, calculate sd, pooling" 
slaghuis_2004$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

slaghuis_2004


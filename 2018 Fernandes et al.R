## -----------------------------------------------------------------------------------------------------
#schizophrenia group: is the full group, no pooling needed

# calculate SD
# SD = (upper limit - lower limit) / 2
sd_c_fernandes2018 = (2.7247190700608557 - 2.6011236554639297) / 2
sd_sz_fernandes2018 = (2.365168609397605 - 2.191011142044447) / 2


fernandes_2018_es <- esc_mean_sd(grp1m = 2.6629213627623924, grp2m = 2.2752808013538486,  
            grp1sd = sd_c_fernandes2018, grp2sd = sd_sz_fernandes2018, 
            grp1n = 40, grp2n = 40, 
            es.type = "g")
fernandes_2018_es


## -----------------------------------------------------------------------------------------------------
fernandes_2018 <- tibble(es = fernandes_2018_es$es, se = fernandes_2018_es$se ) 

fernandes_2018$study <- "Fernandes et al. 2018"
fernandes_2018$method <- "staircase"
fernandes_2018$medication <- "medicated" #all medicated
fernandes_2018$cpz <- 387.515 #combined mean of non-smoker scz (364.22) and smoker scz (415.81)
fernandes_2018$task <- "2AFC"
fernandes_2018$all_SF <- "0.2, 0.6, 1.0, 2.0, 5.0, 10.0, 20.0"
fernandes_2018$SF <- 0.6
fernandes_2018$size <- 5
fernandes_2018$BPRS <- 42.95 #combined mean of non-smoker scz (41.8) and smoker scz (44.1)
fernandes_2018$motion <- FALSE 
fernandes_2018$duration <- 0.6
fernandes_2018$location <- 2.5
fernandes_2018$lapses <- TRUE 
fernandes_2018$calculation_statistic <- "m and sd"  
fernandes_2018$calculation_data <- "scrapping" 
fernandes_2018$calculation_certainty <- "unsure" #scale is "sure", "unsure", "very unsure"

fernandes_2018


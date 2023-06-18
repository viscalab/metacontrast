## ----------------------------------------------------------------------------------------------------------------------------------------
kéri_2002_es_f <- esc_f(f = 13.93,      # F value of the one-way anova
      grp1n = 20,   # sample size of group 1 
      grp2n = 15,   # sample size of group 2
      es.type = "g") # convert to Hedges' g; use "d" for SMD
kéri_2002_es_f


## ----------------------------------------------------------------------------------------------------------------------------------------
#Calculate sd
# SD = (upper limit - lower limit) / 2
sd_c_kéri2002 = (2.025000027465817 - 1.7250000640869063) / 2
sd_sz_kéri2002 = (1.9150001171874858 - 1.6500000732421785) / 2

# calculate es
kéri_2002_es_scrap <- esc_mean_sd(grp1m = 1.8750000457763618 , grp2m = 1.7850000567626885,  # group mean
            grp1sd = sd_c_kéri2002, grp2sd = sd_sz_kéri2002, # group sd
            grp1n = 15, grp2n = 20, 
            es.type = "g")
kéri_2002_es_scrap 



## ----------------------------------------------------------------------------------------------------------------------------------------
kéri_2002 <- tibble( es = kéri_2002_es_scrap$es, se = kéri_2002_es_scrap$se ) 

kéri_2002$study <- "Kéri et al. 2002"
kéri_2002$method <- "staircase"  
kéri_2002$medication <- "medicated" #all medicated
kéri_2002$cpz <- 448.5  
kéri_2002$task <- "2IFC" #2IFC means two interval forced choice
kéri_2002$all_SF <- "0.5, 1.2, 1.9, 2.9, 3.6, 4.8, 5.7, 7.2 and 14.4"
kéri_2002$SF <- 0.5
kéri_2002$size <- 13 # 13x13
kéri_2002$BPRS <- 32.8
kéri_2002$motion <- FALSE 
kéri_2002$duration <- 0.5 
kéri_2002$location <- 0 
kéri_2002$lapses <- FALSE #they use an adaptive method
kéri_2002$calculation_statistic <- "m and sd" 
kéri_2002$calculation_data <- "scrapping" 
kéri_2002$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

kéri_2002


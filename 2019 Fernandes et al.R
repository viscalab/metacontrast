## ----------------------------------------------------------------------------------------------------------------------------------------
#fernandes_2019 <- tibble(es = $es, se = $se ) 
fernandes_2019 <- tibble(es = NA, se = NA )

fernandes_2019$study <- "Fernandes et al. 2019"
fernandes_2019$method <- "staircase"
fernandes_2019$medication <- "medicated" #all medicated
fernandes_2019$cpz <- 546.5 #combined mean of typical meds scz (615) and atypical meds scz (478)
fernandes_2019$task <- "2AFC"
fernandes_2019$all_SF <- "0.2, 0.5, 1.0, 2.0, 5.0, 10.0, 20.0"
fernandes_2018$SF <- 0.5
fernandes_2019$size <- 5
fernandes_2019$BPRS <- 41.36 #combined mean of typical meds scz (40.42) and atypical meds scz (42.30)
fernandes_2019$motion <- FALSE 
fernandes_2019$duration <- 0.6
fernandes_2019$location <- 2.5
fernandes_2019$lapses <- TRUE 
fernandes_2019$calculation_statistic <- "mailed for data, waiting"  
fernandes_2019$calculation_data <- "mailed for data, waiting" 
fernandes_2019$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

fernandes_2019


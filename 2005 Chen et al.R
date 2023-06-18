## -----------------------------------------------------------------------------------------------------
#The relevant task is the contrast detection task. They only provide the F for the four groups, so it is not possible to calculate the g for the schizophrenia and control group. We need to ask for the data.

#Asked for the data, authors have died so we do not have access to the data.


## -----------------------------------------------------------------------------------------------------
chen_2005 <- tibble(es = "No data", se = "No data" ) 
chen_2005

chen_2005$es <- as.numeric(chen_2005$es)
chen_2005$se <- as.numeric(chen_2005$es)

chen_2005$study <- "Chen et al. 2005"
chen_2005$method <- "staircase" # adaptive, mc, ... 
chen_2005$medication <- "medicated and unmedicated" #n=28 were medicated, n=1 unmedicated
chen_2005$cpz <- "557"  #in mg
chen_2005$task <- "2IFC" #2IFC means two interval forced choice
chen_2005$all_SF <- 0.5
chen_2005$SF <- 0.5
chen_2005$size <- 10 # size of the stimulus presented
chen_2005$BPRS <- 40.0
chen_2005$motion <- TRUE #is grating moving?
chen_2005$duration <- 0.3 #Duration of the stimulus in seconds
chen_2005$location <- 0 #Where the stimulus was presented in degrees of visual angle (fixation = 0)
chen_2005$lapses <- "FALSE"  #In lapses, we can include whether they control for lapses (TRUE) or not (FALSE).
chen_2005$calculation_statistic <- "No data, authors died"  #"t-test", "m and sd"
chen_2005$calculation_data <- "No data, authors died" #"scrapping", "reported", "raw"
chen_2005$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

chen_2005


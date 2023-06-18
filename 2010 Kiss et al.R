## ----------------------------------------------------------------------------------------------------------------------------------------
kiss_2010_es_f <- esc_f(f = 6.12,      # F value of the one-way anova
      grp1n = 20,   # sample size of group 1 
      grp2n = 20,   # sample size of group 2
      es.type = "g") # convert to Hedges' g; use "d" for SMD
kiss_2010_es_f


## ----------------------------------------------------------------------------------------------------------------------------------------
# Function to calculate SD from mean, n, and 95%CI
calculate_sd <- function(mean, n, ci_lower, ci_upper) {
  # Calculate the z-score for the desired confidence level (e.g., 95%)
  z <- qnorm(1 - (1 - 0.95) / 2)

  # Calculate the standard deviation
  sd <- (ci_upper - ci_lower) / (2 * z / sqrt(n))
  
  return(sd)
}


## ----------------------------------------------------------------------------------------------------------------------------------------
# Control 

mean_c_kiss2010 <- 1.4283361042361726
n_c_kiss2010 <- 20
ci_upper_c_kiss2010 <- 1.6457990929719066
ci_lower_c_kiss2010 <- 1.205930851975418

sd_c_kiss2010 <- calculate_sd(mean_c_kiss2010, n_c_kiss2010, ci_lower_c_kiss2010, ci_upper_c_kiss2010)
print(sd_c_kiss2010)


## ----------------------------------------------------------------------------------------------------------------------------------------
# Schizophrenia 

mean_sz_kiss2010 <- 1.991762743296751
n_sz_kiss2010 <- 20
ci_upper_sz_kiss2010 <- 2.2042834685074646
ci_lower_sz_kiss2010 <- 1.7545304742186127

sd_sz_kiss2010 <- calculate_sd(mean_sz_kiss2010, n_sz_kiss2010, ci_lower_sz_kiss2010, ci_upper_sz_kiss2010)
print(sd_sz_kiss2010)


## ----------------------------------------------------------------------------------------------------------------------------------------
kiss_2010_es <- esc_mean_sd(grp1m = mean_c_kiss2010, grp2m = mean_sz_kiss2010,  
            grp1sd = sd_c_kiss2010, grp2sd = sd_sz_kiss2010,
            grp1n = 20, grp2n = 20, 
            es.type = "g")
kiss_2010_es


## ----------------------------------------------------------------------------------------------------------------------------------------
kiss_2010 <- tibble( es = kiss_2010_es$es, se = kiss_2010_es$se ) 

kiss_2010$study <- "Kiss et al. 2010"
kiss_2010$method <- "staircase"  
kiss_2010$medication <- "unmedicated" #all unmedicated
kiss_2010$cpz <- NA
kiss_2010$task <- "2AFC" #2AFC mentioned in the article
kiss_2010$all_SF <- "0.25, 0.5, 1.0, 2.0, 4.0"
kiss_2010$SF <- 0.5
kiss_2010$size <- "2.5 x 2.5" 
kiss_2010$BPRS <- NA
kiss_2010$motion <- FALSE 
kiss_2010$duration <- 0.045 
kiss_2010$location <- 0
kiss_2010$lapses <- TRUE # answers after 2000ms were not taken into account
kiss_2010$calculation_statistic <- "m and sd"  
kiss_2010$calculation_data <- "scrapping, calculate sd" 
kiss_2010$calculation_certainty <- "unsure" #scale is "sure", "unsure", "very unsure"

kiss_2010


## ----------------------------------------------------------------------------------------------------------------------------------------
# F-statistic: 3 groups, thus not applicable


## ----------------------------------------------------------------------------------------------------------------------------------------
# Function to calculate SD from mean, n, and CI
calculate_sd <- function(mean, n, ci_lower, ci_upper) {
  # Calculate the z-score for the desired confidence level (e.g., 95%)
  z <- qnorm(1 - (1 - 0.95) / 2)

  # Calculate the standard deviation
  sd <- (ci_upper - ci_lower) / (2 * z / sqrt(n))
  
  return(sd)
}


## ----------------------------------------------------------------------------------------------------------------------------------------
# Non-deficit 

nd_cimmer2006_mean <- 2.2919685074449494
nd_cimmer2006_n <- 32
nd_cimmer2006_ci_lower <- 2.2390551065646807
nd_cimmer2006_ci_upper <- 2.3411023518852456

nd_cimmer2006_sd <- calculate_sd(nd_cimmer2006_mean, nd_cimmer2006_n, nd_cimmer2006_ci_lower, nd_cimmer2006_ci_upper)
print(nd_cimmer2006_sd)



## ----------------------------------------------------------------------------------------------------------------------------------------
# Deficit 

d_cimmer2006_mean <- 2.200314934201157
d_cimmer2006_n <- 12
d_cimmer2006_ci_lower <- 2.11622047383731
d_cimmer2006_ci_upper <- 2.2834645703349024

d_cimmer2006_sd <- calculate_sd(d_cimmer2006_mean, d_cimmer2006_n, d_cimmer2006_ci_lower, d_cimmer2006_ci_upper)
print(d_cimmer2006_sd)


## ----------------------------------------------------------------------------------------------------------------------------------------
# Control 

c_cimmer2006_mean <- 2.4629921171292537
c_cimmer2006_n <- 20
c_cimmer2006_ci_lower <- 2.3996850441722124
c_cimmer2006_ci_upper <- 2.5262992117129253

c_cimmer2006_sd <- calculate_sd(c_cimmer2006_mean, c_cimmer2006_n, c_cimmer2006_ci_lower, c_cimmer2006_ci_upper)
print(c_cimmer2006_sd)


## ----------------------------------------------------------------------------------------------------------------------------------------
sz_pooled_cimmer2006 <- pool.groups(n1 =32 ,   # sample size group 1
            n2 = 12,   # sample size group 2
            m1 = 2.2919685074449494,  # mean group 1
            m2 = 2.200314934201157,    # mean group 2
            sd1 = nd_cimmer2006_sd,   # sd group 1
            sd2 = d_cimmer2006_sd) # sd group2 
sz_pooled_cimmer2006


## ----------------------------------------------------------------------------------------------------------------------------------------
cimmer_2006_es <- esc_mean_sd(grp1m = 2.4629921171292537, grp2m = sz_pooled_cimmer2006$Mpooled,  
            grp1sd = c_cimmer2006_sd, grp2sd = sz_pooled_cimmer2006$SDpooled,
            grp1n = 20, grp2n = sz_pooled_cimmer2006$Npooled, 
            es.type = "g")
cimmer_2006_es


## ----------------------------------------------------------------------------------------------------------------------------------------
cimmer_2006 <- tibble( es = cimmer_2006_es$es, se = cimmer_2006_es$se ) 
cimmer_2006

cimmer_2006$study <- "Cimmer et al. 2006"
cimmer_2006$method <- "adaptive" 
cimmer_2006$medication <- "medicated" #all medicated
cimmer_2006$cpz <- "NA"  #Dose is not mentioned
cimmer_2006$task <- "2IFC" 
cimmer_2006$all_SF <- 0.5
cimmer_2006$SF <- 0.5
cimmer_2006$size <- 13
cimmer_2006$BPRS <- "NA" #not mentioned
cimmer_2006$motion <- TRUE 
cimmer_2006$duration <- 0.5 
cimmer_2006$location <- 0
cimmer_2006$lapses <- FALSE  
cimmer_2006$calculation_statistic <- "m and sd"  
cimmer_2006$calculation_data <- "scrapping, calculate sd, pooling" 
cimmer_2006$calculation_certainty <- "sure" #scale is "sure", "unsure", "very unsure"

cimmer_2006


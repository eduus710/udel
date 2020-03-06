#WERIK DUUS
# HW #2, Q4

# In this R assignment, you will be exploring the effects of varying n (the sample size) and
# k (the number of replications) on the distribution of the sample mean, a commonly used statistic.

# The first simulation (for the normal distribution) has been coded for you. The other three
# simulations will be very similar in format to this one; however, you will need to change
# the name of the function from which values are pulled. You will also need to frequently tweak
# the values of RUNS and N; I would suggest starting with 10 runs and a sample size of 10 for each
# distribution.

# New functions:
#     - rnorm(): Pulls values from a normal distribution with a user-specified mean and SD.
#     - rexp(): Pulls values from an exponential distribution with a user-specified rate.
#     - rpois(): Pulls values from a poisson distribution with a user-specified lambda.
#     - rchisq(): Pulls values from a chi-squared distribution with a user-specified df.
#     - plot(): Plots the argument in the plot pane.
#     - density(): Fits a density curve to the input values.

# GLOBAL PARAMETERS ===============================================================================

# RUNS: Tells R the number of times you want to loop through the simulation.
# N: Tells R how large the sample should be for each run.

RUNS <- 1000
N<- 20
MEANS <- rep(NA, RUNS)

# NORMAL DISTRIBUTION =============================================================================

for (i in 1:RUNS) {
  MEANS[i] <- mean(rnorm(N, mean = 0, sd = 1))
}

plot(density(MEANS))

# What combination of values for RUNS and N produces an approximately normal-shaped distribution?

# EXPONENTIAL (rexp) DISTRIBUTION =================================================================

for (i in 1:RUNS) {
  MEANS[i] <- mean(rexp(N,rate=1))
}

plot(density(MEANS))

# What combination of values for RUNS and N produces an approximately normal-shaped distribution?

# POISSON (rpois) DISTRIBUTION ====================================================================

for (i in 1:RUNS) {
  MEANS[i] <- mean(rpois(N,lambda=1))
}

plot(density(MEANS))

# What combination of values for RUNS and N produces an approximately normal-shaped distribution?

# CHI-SQUARE (rchisq) DISTRIBUTION ================================================================

for (i in 1:RUNS) {
  MEANS[i] <- mean(rchisq(N, 1, ncp=0))
}

plot(density(MEANS))

# What combination of values for RUNS and N produces an approximately normal-shaped distribution?

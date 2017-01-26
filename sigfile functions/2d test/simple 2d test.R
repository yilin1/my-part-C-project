#generate data just to check 2dMCMC
library(MASS)
library(Matrix)
sg=matrix(c(0.1, 0.9, 0.9, 0.3),nrow=2, ncol=2)
nearPD()
mvrnorm(20,mu=c(0.6,0.7),Sigma=sg)
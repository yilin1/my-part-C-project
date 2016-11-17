install.packages("deSolve")
library(deSolve)

# tryouts: 
datat=pseudodata(c8=0.1)
s=myMCMC(psdata=datat)

datat=pseudodata(c8=0.01)
s=myMCMC(psdata=datat)

datat=pseudodata(c8=0.9)
s=myMCMC(psdata=datat,n=3500)

hist(a)

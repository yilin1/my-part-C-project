library(coda)
asmc1=as.mcmc(mc48a1[,3])
hi1=HPDinterval(asmc1,prob=0.95)


#par(cex)
hist(mc48a1[,3],freq=FALSE)
axis(side=3,at=c(round(hi1[1],2),round(hi1[2],2)),label=TRUE, col='red',lwd=2)
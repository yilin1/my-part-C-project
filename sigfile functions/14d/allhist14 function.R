source("/Users/yilinsmac/Desktop/sigfile functions/14d/allhist14 function.r")
allhist14=function(mc1,mc2,mc3,mc4,m,last=2500){ 
#returns the histogram of 4 chains mc1-4, they should be the output of a 14d MCMCM function
# only last "last" of each chain are considered in the histogram
# m is the index of the parameter interested
# importantly, the mc's should have the same number of iterations
library(coda)
cbined=c(tail(mc1[,m],last),tail(mc2[,m],last),tail(mc3[,m],last),tail(mc4[,m],last))
asmc=as.mcmc(cbined)
hpdintv=HPDinterval(asmc,prob=0.95)
#par(cex.sub=0.9)
hist(cbined,main='4-chain histogram',sub=paste('m=',m,',','last',last,'iterates of each chain of length',dim(mc1)[1]),xlim=c(0,1),xlab='Parameter values',freq=FALSE)

axis(side=3,at=c(round(hpdintv[1],2), round(hpdintv[2],2)),label=TRUE, col='red',lwd=2)

}
	
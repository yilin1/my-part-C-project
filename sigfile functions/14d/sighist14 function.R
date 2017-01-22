#source("/Users/yilinsmac/Desktop/sigfile functions/14d/sighist14 function.r")

sighist14=function(mc,m,last=500){
	#this is a histogram with HPD for a single chain, i.e.mth column of lattice mc)
	#mc is the output of a 14d MCMC funciton
	#m is the index of the parameter
	# only the last 'last' iterates of the chain would be included in the histogram
	
	library(coda)
    include=tail(mc[,m],last)
    asmc=as.mcmc(include)
    hpdintv=HPDinterval(asmc,prob=0.95)
    hist(include,main='single chain histogram',sub=paste('m=',m,',','last',last,'iterates of a chain of length',dim(mc)[1]),xlim=c(0,1),xlab='Parameter values',freq=FALSE)
    
 axis(side=3,at=c(round(hpdintv[1],2), round(hpdintv[2],2)),label=TRUE, col='red',lwd=2)
}
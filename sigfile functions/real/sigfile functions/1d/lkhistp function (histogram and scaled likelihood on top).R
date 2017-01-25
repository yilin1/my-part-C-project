## plot of likelihood (not logged)
lkhistp=function(m,psdata,n=3000,l=2500,t=50,tby=1,sf=0.01,erv1=1,erv2=0.1){ # m is the index of the parameter of interest
# psdata is the real data to compute the log-likelihood of the indexed parameter, n is the number of MCMC iteration used in computing the histogram.
#mchain=myMCMC(psdata,m=m,erv1=erv1,t=t,tby=tby,sf=sf,n=n)
#h=hist(mchain,freq=FALSE)
h=allhist(psdata=psdata,m=m,n=n,erv1=erv1,sf=sf,t=t,tby=tby,l=l,erv2=erv2)

likvec=lapply(seq(0.01,0.99,by=0.001),function(i) myloglk(m=m,psdata=psdata,a1=i,t=t,tby=tby,erv1=erv1,sf=sf))


lines(seq(0.01,0.99,by=0.001),exp(as.numeric(likvec))/max(exp(as.numeric(likvec)))*max(h$density), xlab="par", ylab="likelihood",main=paste("m=",m),col='blue')
}
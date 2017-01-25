## plot of log-likelihood
loglkplot=function(m,psdata,t=50,tby=1,erv1=1,sf=0.01){ # m is the index of the parameter of interest
# psdata is the real data to compute the log-likelihood of the indexed parameter

   likvec=lapply(seq(0.01,0.99,by=0.001),function(i) myloglk(m=m,psdata=psdata,a1=i,t=t,tby=tby,erv1=erv1,sf=sf))

  llp=plot(seq(0.01,0.99,by=0.001),as.numeric(likvec), xlab="par", ylab="log-likelihood",xlim=c(0,1),main=paste("m=",m))
return(llp)
}

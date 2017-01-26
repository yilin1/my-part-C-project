allhist=function(psdata,m,n=3000,erv1=1,erv2=0.1,sf=0.01,t=50,tby=1,l=2500){ #returns the histogram of 4 chains (last l of each chain, psdata is the real data to deal with, the 4 chains are generated inside the function.
c1=myMCMC(psdata=psdata,m=m,erv1=erv1,erv2=erv2,t=t,tby=tby,n=n,sf=sf)
	c2=myMCMC(psdata=psdata,m=m,erv1=erv1,erv2=erv2,t=t,tby=tby,n=n,sf=sf)	
c3=myMCMC(psdata=psdata,m=m,erv1=erv1,erv2=erv2,t=t,tby=tby,n=n,sf=sf)	
c4=myMCMC(psdata=psdata,m=m,erv1=erv1,erv2=erv2,t=t,tby=tby,n=n,sf=sf)
c=c(tail(c1,l),tail(c2,l),tail(c3,l),tail(c4,l))
hist(c,main='4-chain histogram',xlim=c(0,1),xlab='Parameter values')

}
	
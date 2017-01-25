# 6 plots in one page: (named 5 plots are one is not among the required one)
plt5=function(psdata,m,v,n=3000,t=50,tby=1,erv1=1,erv2=0.1,l=500,sf=0.01,sz=100){# v is the real value of the parameter indexed m take,n is the number of MCMC iterations,sf is the scaling factor in error as defined in noise(),l specifies the last l elements of each 4 chains to be included in the mix-4 hist(allhist()),sz is the size to sample from one posterior (c4s[,2])in mcqtfitplot() (sigfile)
	par(mfrow=c(2,3))
	loglkplot(m=m,psdata=psdata,t=t,tby=tby,erv1=erv1,sf=sf)
abline(v=v)
	c4s=chainplot(psdata=psdata,erv1=erv1,erv2=erv2,t=t,tby=tby,n=n,m=m,sf=sf)

#lkhistp(m=m,psdata=psdata,n=n,l=l,t=t,tby=tby,sf=sf,erv1=erv1,erv2=erv2)
#allhist(psdata=psdata,m=m,n=n,l=l,erv1=erv1,erv2=erv2,sf=sf,t=t,tby=tby)

mclkhistp(mchains=c4s,l=l,m=m,psdata=psdata,t=t,tby=tby,erv1=erv1,sf=sf)

#qtfitplot(a=psdata,m=m,t=t,tby=tby,n=n)
mcqtfitplot(oneMchain=c4s[,2],psdata=psdata,m=m,sz=sz,l=l,t=t,tby=tby,sf=sf,erv1=erv1,erv2=erv2)

#Mchain=myMCMC(psdata=psdata,m=m,erv1=erv1,erv2=erv2,t=t,tby=tby,n=n,sf=sf)
Mchain=c4s[,2]
acf(Mchain)

pvalcpa(psdata,t=t,tby=tby,m=m)
	return(paste('m=',m,'v=',v))
}

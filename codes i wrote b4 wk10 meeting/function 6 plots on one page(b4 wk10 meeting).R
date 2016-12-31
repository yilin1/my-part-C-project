# 6 plots in one page:
ddd=function(psdata,m,v,n,t=50,tby=1,erv1=0.1,erv2=0.2){# v is the real value of the parameter indexed m take.n is the number of MCMC iterations
	par(mfrow=c(2,3))
	loglkplot(m=m,psdata=psdata,t=t,tby=tby,erv1=erv1)
	abline(v=v)
	chainplot(psdata=psdata,erv1=erv1,erv2=erv2,t=t,tby=tby,n=n,m=m)
	c1=myMCMC(psdata,erv1=erv1,erv2=erv2,t=t,tby=tby,n=n,m=m)
	c2=myMCMC(psdata,erv1=erv1,erv2=erv2,t=t,tby=tby,n=n,m=m)	
	c3=myMCMC(psdata,erv1=erv1,erv2=erv2,t=t,tby=tby,n=n,m=m)
	c4=myMCMC(psdata,erv1=erv1,erv2=erv2,t=t,tby=tby,n=n,m=m)
c=c(c1,c2,c3,c4)
	hist(c,main='4-chain histogram')
	qtfitplot(psdata,m=m,t=t,tby=tby,n=n)
	acf(c1)
	pvalcpa(psdata,t=t,tby=tby,m=m)
	return(paste('m=',m,'v=',v))
}

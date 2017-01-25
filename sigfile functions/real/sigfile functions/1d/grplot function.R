#gelman & rubin plot
grplot=function(a1,a2){ #this gives the gelman & rubin plot of a1, a2, where a1 and a2 are outputs from myMCMC()
	library(coda)
	asmc1=as.mcmc(a1)
	asmc2=as.mcmc(a2)
	combinedchains=mcmc.list(asmc1,asmc2)
	gelman.plot(combinedchains,main='Gelman & Rubin diagnostic plot')
	return('please look at the Quartz window')
}


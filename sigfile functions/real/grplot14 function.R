#gelman & rubin plot

source("/Users/yilinsmac/Desktop/sigfile functions/14d/grplot14 function.r")
grplot14=function(mc1,mc2,m){ 
#this gives the gelman & rubin plot of mc1 & mc2,for the parameter indexed m, 
# where mc1 and mc2 are outputs from a 14d MCMC function, with or without real
	library(coda)
	asmc1=as.mcmc(mc1[,m])
	asmc2=as.mcmc(mc2[,m])
	combinedchains=mcmc.list(asmc1,asmc2)
	gelman.plot(combinedchains,main=paste('Gelman & Rubin diagnostic','(',dim(mc1)[1],'iterations',')','m=',m))
	#return('please look at the Quartz window')
	}


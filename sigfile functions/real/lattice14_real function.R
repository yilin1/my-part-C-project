#source("/Users/yilinsmac/Desktop/sigfile functions/real/lattice14_real function.r")

lattice14_real=function(mc,last=1000,spsize=100,data){ 
#mc is the output of a 14d MCMC function with real,
#spsize is the number to sample from the last "last" elements of mc,  
 #data is the real data, it is required because we want the maximum time point of it. mc's time point should be the same as the data's max(Month)

#this function returns a lattice of values of data generated from different values of parameter sampled from the generated "posterior" mc.
#t=max(data$Month)
	n=dim(mc)[1]
	indexes=sample((n-last+1):n,spsize,replace=FALSE) # only sample from the last "last" rows.

	sp=mc[indexes,]
		lat={}
	for (j in (1:dim(sp)[1])){
		pars=sp[j,]
	   noisedprediction=pseudodata_real(a0=pars,data=data)
 lat=rbind(lat,noisedprediction[,1])
	}
	return(lat)
}

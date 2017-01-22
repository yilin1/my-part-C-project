source("/Users/yilinsmac/Desktop/sigfile functions/14d/lattice14 function.r")

lattice14=function(mc, last=1000,spsize=100,t=50,tby=1){ 
#mc is the output of a 14d MCMC function,
 #spsize is the number to sample from the last "last" elements of mc,  

#this function returns a lattice of values of data generated from different values of parameter sampled from the generated "posterior" mc.
	n=dim(mc)[1]
	indexes=sample((n-last+1):n,spsize,replace=TRUE) # only sample from the last "last" rows.

	sp=mc[indexes,]
		lat={}
	for (j in (1:dim(sp)[1])){
		pars=sp[j,]
	   noisedprediction=pseudodata(i1=pars[1], i2=pars[2], i3=pars[3], i4=pars[4], i5=pars[5],c1=pars[6], c2=pars[7], c3=pars[8], c4=pars[9], c5=pars[10], c6=pars[11], c7=pars[12], c8=pars[13],sf=pars[14],erv1=erv1,t=t,tby=tby)
 lat=rbind(lat,noisedprediction)
	}
	return(lat)
}

#source("/Users/yilinsmac/Desktop/sigfile functions/14d/indivtracplot14 function (one lattice).r")

indivtracplot14=function(mc,last=500){
#this returns trace plots of all the columns from 1-13 of the lattice mc,which is the output of a 14d MCMC.
#only the last 'last' draws are plotted
	par(mfrow=c(3,5))
	for (j in 1:13){
	traceplot14(mc=mc,m=j,last=last)
	}
}
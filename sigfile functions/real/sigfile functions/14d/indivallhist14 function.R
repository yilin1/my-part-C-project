#source("/Users/yilinsmac/Desktop/sigfile functions/14d/indivallhist14 function.r")
indivallhist14=function(mc1,mc2,mc3,mc4,last=2500){
	#returns the combined 4-chain histogram, counting in only the last 'last' draws from each chain.
#mc1-4 should be output from a 14d MCMC function
	par(mfrow=c(3,5),cex.main=0.8,cex.sub=0.4,cex.axis=0.7,cex.lab=0.7)
	for (j in 1:14){

		allhist14(mc1=mc1,mc2=mc2,mc3=mc3,mc4=mc4,m=j,last=last)
	}
}
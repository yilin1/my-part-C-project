source("/Users/yilinsmac/Desktop/sigfile functions/14d/indivpar4chainplot14 function.r")
indivpar4chainplot14=function(mc1,mc2,mc3,mc4){
	#mc1-4 are outputs from a 14d MCMC function
	# in particular, they should be of the same length
		par(mfrow=c(3,5),cex.main=0.6,cex.lab=0.6)
	for (j in 1:14){

	chainplot14(m=j,mc1=mc1, mc2=mc2, mc3=mc3, mc4=mc4)
}
return(dim(mc1)[1])
}

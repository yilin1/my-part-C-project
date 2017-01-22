source('/Users/yilinsmac/Desktop/sigfile functions/14d/indivgrplot14 function.r')
indivgrplot14=function(mc1,mc2){
	#returns a run-through display of grplots of each m from 1-14
	#mc1,2 are outputs from a 14d MCMC function
	library(coda)
	for (j in 1:14){
		quartz()
		grplot14(mc1,mc2,m=j)
		
			}
	
}

#graphics.off()
#source("/Users/yilinsmac/Desktop/sigfile functions/14d/indivacf14 function.r")
indivacf14=function(mc){
	# returns run-through display of acf plot for mc's each dimension [,1-14]
	# mc should be output from a 14d MCMC funtion
	for(j in 1:14){
		quartz()
		acf(mc[,j],main='autocorrelation plot',sub=paste('m=',j,'(',dim(mc)[1],'iterations',')'))
	}
}

#graphics.off()
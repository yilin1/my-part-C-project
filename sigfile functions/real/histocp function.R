#source('/Users/yilinsmac/Desktop/sigfile functions/real/histocp function.r')
histocp=function(mc1,mc2,mc3=FALSE,mc4=FALSE,m,last=500){
	
# Plots the histogram density of the mc lattices with index specified by m. (only last 'last' elements are plotted)
#maximum deal with 4 chains.
#so plot density of last 'last' elements of mc1[,m],mc2[,m],and so on.
	par(mfrow=c(1,1))
	plot(density(tail(mc1[,m],last)),main=paste('m=',m,'last',last,'iterates'),xlab='par',ylab='density')
	lines(density(tail(mc2[,m],last)),col=2)
	if (mc3!=FALSE){
	lines(density(tail(mc3[,m],last)),col=3)
	if (mc4!=FALSE){
      lines(density(tail(mc4[,m],last)),col=4)
	}
	}

}
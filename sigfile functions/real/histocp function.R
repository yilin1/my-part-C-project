#source('/Users/yilinsmac/Desktop/sigfile functions/real/histocp function.r')
histocp=function(mc1,mc2=FALSE,mc3=FALSE,mc4=FALSE,m,last=500){
#can plot single chain also	
# Plots the histogram density of the mc lattices with index specified by m. (only last 'last' elements are plotted)
#maximum deal with 4 chains.
#so plot density of last 'last' elements of mc1[,m],mc2[,m],and so on.
  if (mc2==FALSE & mc3==FALSE & mc4==FALSE){
  ymin=min(density(tail(mc1[,m],last))$y)
  ymax=max(density(tail(mc1[,m],last))$y)
  plot(density(tail(mc1[,m],last)),main=paste('m=',m,'last',last,'iterates'),xlab='par',ylab='density',ylim=c(ymin,ymax))
  }
  else if (mc3==FALSE & mc4==FALSE){
  par(mfrow=c(1,1))
  ymin=min(density(tail(mc1[,m],last))$y,density(tail(mc2[,m],last))$y)
  ymax=max(density(tail(mc1[,m],last))$y,density(tail(mc2[,m],last))$y)
	plot(density(tail(mc1[,m],last)),main=paste('m=',m,'last',last,'iterates'),xlab='par',ylab='density',ylim=c(ymin,ymax))
	lines(density(tail(mc2[,m],last)),col=2)}
	else if (mc4==FALSE){
	  ymin=min(density(tail(mc1[,m],last))$y,density(tail(mc2[,m],last))$y,density(tail(mc3[,m],last))$y)
	  ymax=max(density(tail(mc1[,m],last))$y,density(tail(mc2[,m],last))$y,density(tail(mc3[,m],last))$y)
	  plot(density(tail(mc1[,m],last)),main=paste('m=',m,'last',last,'iterates'),xlab='par',ylab='density',ylim=c(ymin,ymax))
	  lines(density(tail(mc2[,m],last)),col=2)
	  lines(density(tail(mc3[,m],last)),col=3)}
	      else {
	  ymin=min(density(tail(mc1[,m],last))$y,density(tail(mc2[,m],last))$y,density(tail(mc3[,m],last))$y,density(tail(mc4[,m],last))$y)
	  ymax=max(density(tail(mc1[,m],last))$y,density(tail(mc2[,m],last))$y,density(tail(mc3[,m],last))$y,density(tail(mc4[,m],last))$y)
	  plot(density(tail(mc1[,m],last)),main=paste('m=',m,'last',last,'iterates'),xlab='par',ylab='density',ylim=c(ymin,ymax))
	  lines(density(tail(mc2[,m],last)),col=2)
	  lines(density(tail(mc3[,m],last)),col=3)
	   lines(density(tail(mc4[,m],last)),col=4)
	}
	}
  


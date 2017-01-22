source("/Users/yilinsmac/Desktop/sigfile functions/14d/chainplot14 function (4 chain).r")
chainplot14=function(m,mc1,mc2,mc3,mc4){
#returns 4-chain trace plot of 14d mcmc output mc1-mc4 for the parameter indexed m.
	plot(mc1[,m],type='l',ylim=c(0,1),main=paste('m=',m,',','4-chain','(',dim(mc1)[1],'iterations',')'),xlab='iterations',ylab='parameter')
lines(mc2[,m],ylim=c(0,1),col='blue')
lines(mc3[,m],ylim=c(0,1),col='red')
lines(mc4[,m],ylim=c(0,1),col='green')
return()
}
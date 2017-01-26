allplots=function(a,m,t,tby){ # t, tby is used in pseudodata etc. to generate number of data points by t/tby, m is the index of the parameter to infer, a is the real data to look at.
	pdf("all plots.pdf")
	par(mfrow=c(2,2))
	loglkplot(m=m,psdata=a,t=t,tby=tby)
	b=myMCMC(a,t=t,tby=tby,m=m)
	traceplot(b)
	hist(b,main='histogram',xlab='par',ylab='frequency in MCMC')
	pvalcpa(a,t=t,tby=tby,m=m)	
	dev.off()
	return(m)
}

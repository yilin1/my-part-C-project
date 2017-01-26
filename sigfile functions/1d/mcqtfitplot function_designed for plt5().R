# this function is the counterpart of qtfitplot(), designed spefically to be incorporated into plt5(), to avoid generating multiple chains more than once.
#need to have real data, psdata, ready.
# m is the index of parameter of interest.
# arguments as described in qtfitplot().
mcqtfitplot=function(oneMchain,psdata,m,sz=100,l=1000,t=50,tby=1,sf=0.01,erv1=1,erv2=0.1){#oneMchain is an output from myMCMC()
	plot(psdata,ylim=c(0,1),main='fit to data using quantiles',ylab='data',xlab="time")
	w=lattice(m=m,c=oneMchain,t=t,tby=tby,l=l,sz=sz)
	s=qtles(w,t=t,tby=tby)
	lines(s[,1],col='red') # 25% quantile
	lines(s[,2],col='blue') # 50% quantile
	lines(s[,3],col='green') # 75% quantile
	return(m)

}
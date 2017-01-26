# 4-chain plot function
chainplot=function(psdata, m,sf=0.01,erv1=1, erv2=0.1, t=50, tby=1, n=3000){# this gives the 4-chain plot, psdata is the real data to deal with
	chain1=myMCMC(psdata, sf=sf,erv1=erv1, erv2=erv2, t=t, tby=tby, n=n, m=m)
	chain2=myMCMC(psdata, sf=sf,erv1=erv1, erv2=erv2, t=t, tby=tby, n=n, m=m)
	chain3=myMCMC(psdata, sf=sf,erv1=erv1, erv2=erv2, t=t, tby=tby, n=n, m=m)
	chain4=myMCMC(psdata, sf=sf,erv1=erv1, erv2=erv2, t=t, tby=tby, n=n, m=m)
	plot(chain1,type='l',main=paste('4-chain comparison',',','m=',m),ylab='chains',xlab='iteration',ylim=c(0,1))
	lines(chain2,col='red')
	lines(chain3,col='green')
	lines(chain4,col='blue')
	multichain=cbind(chain1,chain2,chain3,chain4)
	return(multichain)
}

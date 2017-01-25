# designed specifically to be incorporated in plt5() function to avoid generating multiple chains more than once.
mclkhistp=function(mchains,l=500,m,psdata,t=50,tby=1,erv1=1,sf=0.01){ # mchains is a lattice of multiple chains,can be output of chainplot(), l is the number of last l iterations to consider in the hist plot.   Need to have the real data psdata ready.
	cbchain={}
	for (i in (1:dim(mchains)[2])){
		cbchain=cbind(cbchain,tail(mchains[,i],l))
	}
	h=hist(cbchain,freq=FALSE,main=(paste('histogram of combined last',l,'draws from',dim(mchains)[2],'chains')),xlim=c(0,1),xlab="par")
	likvec=lapply(seq(0.01,0.99,by=0.001),function(i) myloglk(m=m,psdata=psdata,a1=i,t=t,tby=tby,erv1=erv1,sf=sf))
	lines(seq(0.01,0.99,by=0.001),exp(as.numeric(likvec))/max(exp(as.numeric(likvec)))*max(h$density), xlab="par", ylab="likelihood",main=paste("m=",m),col='blue')
}


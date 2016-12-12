# 4-chain plot function
chainplot=function(psdata, erv1=0.1, erv2=0.1, t=50, tby=1, n=1000, m){# this gives the 4-chain plot, psdata is the real data to deal with
	chain1=myMCMC(psdata, erv1=erv1, erv2=erv2, t=t, tby=tby, n=n, m=m)
	chain2=myMCMC(psdata, erv1=erv1, erv2=erv2, t=t, tby=tby, n=n, m=m)
	chain3=myMCMC(psdata, erv1=erv1, erv2=erv2, t=t, tby=tby, n=n, m=m)
	chain4=myMCMC(psdata, erv1=erv1, erv2=erv2, t=t, tby=tby, n=n, m=m)
	plot(chain1,type='l',main=paste('4-chain comparison',',','m=',m),ylab='chains',xlab='iteration')
	lines(chain2,col='red')
	lines(chain3,col='green')
	lines(chain4,col='blue')
	return(m)
}

# autocorrelation plot function
acf(a) # a is the output from myMCMC

#gelman & rubin plot
grplot=function(a1,a2){ #this gives the gelman & rubin plot of a1, a2, where a1 and a2 are outputs from myMCMC()
	library(coda)
	asmc1=as.mcmc(a1)
	asmc2=as.mcmc(a2)
	combinedchains=mcmc.list(asmc1,asmc2)
	gelman.plot(combinedchains,main='Gelman & Rubin diagnostic plot')
	return('please look at the Quartz window')
}

# plot deterministic and noised data on top of it:
psplusdt=function(m,a ,t=50,tby=1){# m is the index of the parameter, a is the value of the indexed parameter to take.
	if (m==1){
		p=pseudodata(i1=a,t=t,tby=tby)
       d=deterministic(i1=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')
    lines(d,col='blue')
    return('please see the quartz for the plot')
}

if (m==2){
		p=pseudodata(i2=a,t=t,tby=tby)
       d=deterministic(i2=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')
    lines(d,col='blue')
    return('please see the quartz for the plot')
}

if (m==3){
		p=pseudodata(i3=a,t=t,tby=tby)
       d=deterministic(i3=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')
    lines(d,col='red')
    return('please see the quartz for the plot')
}

if (m==4){
		p=pseudodata(i4=a,t=t,tby=tby)
       d=deterministic(i4=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')         
      lines(d,col='blue')
    return('please see the quartz for the plot')
}

if (m==5){
		p=pseudodata(i5=a,t=t,tby=tby)
       d=deterministic(i5=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')
    lines(d,col='blue')
    return('please see the quartz for the plot')
}

if (m==6){
		p=pseudodata(c1=a,t=t,tby=tby)
       d=deterministic(c1=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')
    lines(d,col='green')
    return('please see the quartz for the plot')
}

if (m==7){
		p=pseudodata(c2=a,t=t,tby=tby)
       d=deterministic(c2=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')
    lines(d,col='yellow')
    return('please see the quartz for the plot')
}

if (m==8){
		p=pseudodata(c3=a,t=t,tby=tby)
       d=deterministic(c3=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')
    lines(d,col='blue')
    return('please see the quartz for the plot')
}

if (m==9){
		p=pseudodata(c4=a,t=t,tby=tby)
       d=deterministic(c4=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')
    lines(d,col='blue')
    return('please see the quartz for the plot')
}

if (m==10){
		p=pseudodata(c5=a,t=t,tby=tby)
       d=deterministic(c5=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')
    lines(d,col='blue')
    return('please see the quartz for the plot')
}

if (m==11){
		p=pseudodata(c6=a,t=t,tby=tby)
       d=deterministic(c6=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')
    lines(d,col='blue')
    return('please see the quartz for the plot')
}

if (m==12){
		p=pseudodata(c7=a,t=t,tby=tby)
       d=deterministic(c7=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')
    lines(d,col='blue')
    return('please see the quartz for the plot')
}

if (m==13){
		p=pseudodata(c8=a,t=t,tby=tby)
       d=deterministic(c8=a, t=t,tby=tby)
      plot(p,main=paste('deterministic trajectory with noised data',',','m=',m),ylab='data',xlab='time')
    lines(d,col='blue')
    return('please see the quartz for the plot')
}
}




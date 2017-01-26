# plot deterministic and noised data on top of it:
psplusdt=function(m,a,t=50,tby=1){# m is the index of the parameter, a is the value of the indexed parameter to take.
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

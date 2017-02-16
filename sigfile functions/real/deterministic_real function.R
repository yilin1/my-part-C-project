deterministic_real=function(data,a0=rep(0.5,14)){
  #a0 is a vector of dimension 1*13, specifying the parameters
  #data is the real data, it is required because the time points are required.
  # hence this function returns a deterministic output with parameter specified by a0, 
  #   and timepoints (months) specified by data.
  # nothing to do with fitting the data, just to use its timepoints.
  
  i1=a0[1]
  i2=a0[2]
  i3=a0[3]
  i4=a0[4]
  i5=a0[5]
  c1=a0[6]
  c2=a0[7]
  c3=a0[8]
  c4=a0[9]
  c5=a0[10]
  c6=a0[11]
  c7=a0[12]
  c8=a0[13]
  
  
  # t is the maximum timepoint of the variable, tby is the numerical propagation time lap
  # kit to solve Sys of ODE's
  library(deSolve)
  pol<-function(t,y,mu){
    list(c(
      mu[1]*y[1]*(1-(y[1]+y[2]+y[3]+y[4]+y[5]))-mu[2]*y[1],
      mu[2]*y[1]+mu[3]*y[2]*(1-(y[1]+y[2]+y[3]+y[4]+y[5]))-mu[4]*y[2],
      mu[4]*y[2]-mu[5]*y[3],
      mu[6]*y[4]*(1-(y[1]+y[2]+y[3]+y[4]+y[5]))-mu[7]*y[4],
      mu[7]*y[4]-mu[8]*y[5]
    ))
  }
  
  yini<-c(w1=i1,w2=i2,w3=i3,w4=i4,w5=i5)
  
  dt<-ode(y=yini,func=pol,times=data$Month,parms=c(c1,c2,c3,c4,c5,c6,c7,c8)) 
  deterministic=cbind(dt[,6]/(dt[,6]+2*dt[,4]),dt[,1])
  deterministic=as.data.frame(deterministic)
  colnames(deterministic)[1]='ratio'
  colnames(deterministic)[2]='Month'
  
  
  return (deterministic)
}

#test
#t2=deterministic_real2(p7,a0=rep(0.5,14))
#t=deterministic_real()
#plot(t2$Month,t2$ratio,col=2)
#points(t$Month,t$ratio,col=8)

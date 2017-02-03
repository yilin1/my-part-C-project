deterministic_real=function(i1=0.5,i2=0.5,i3=0.5,i4=0.5,i5=0.5,c1=0.5,c2=0.5,c3=0.5,c4=0.5,c5=0.5,c6=0.5,c7=0.5,c8=0.5,t=50,tby=1){
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

dt<-ode(y=yini,func=pol,times=seq(0,t,by=tby),parms=c(c1,c2,c3,c4,c5,c6,c7,c8)) 
deterministic=cbind(dt[,6]/(dt[,6]+2*dt[,4]),dt[,1])
deterministic=as.data.frame(deterministic)
colnames(deterministic)[1]='ratio'
colnames(deterministic)[2]='Month'


return (deterministic)
}

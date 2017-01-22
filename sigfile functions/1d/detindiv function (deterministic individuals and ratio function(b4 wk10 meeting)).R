# (sigfile)
detindiv=function(i1=0.5,i2=0.5,i3=0.5,i4=0.5,i5=0.5,c1=0.5,c2=0.5,c3=0.5,c4=0.5,c5=0.5,c6=0.5,c7=0.5,c8=0.5,t=50,tby=1){
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
h1=dt[,2]
h2=dt[,3]
h3=dt[,4]
l1=dt[,5]
l2=dt[,6]
ratio=dt[,6]/(dt[,6]+2*dt[,4])
inds=cbind(h1,h2,h3,l1,l2,ratio)
return(inds)
}


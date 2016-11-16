install.packages("deSolve")
library(deSolve)
##  Simulate pesudo-data first: 
# kit to solve Sys of ODE's
pol<-function(t,y,mu){
	list(c(
	mu[1]*y[1]*(1-(y[1]+y[2]+y[3]+y[4]+y[5]))-mu[2]*y[1],
	mu[2]*y[1]+mu[3]*y[2]*(1-(y[1]+y[2]+y[3]+y[4]+y[5]))-mu[4]*y[2],
	mu[4]*y[2]-mu[5]*y[3],
	mu[6]*y[4]*(1-(y[1]+y[2]+y[3]+y[4]+y[5]))-mu[7]*y[4],
	mu[7]*y[4]-mu[8]*y[5]
	))
}

yini<-c(w1=0.9,w2=0.02,w3=0.02,w4=0.02,w5=0.03)

# My simulated "data": a(ax in M1)=0.35 (mu[1])
dt<-ode(y=yini,func=pol,times=seq(0,60,by=0.01),parms=c(0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.8)) 
datat=dt[,6]/(dt[,6]+2*dt[,4])
plot(datat)


##  now start implementing MCMC:
n=1000
a=rep(NA,n)
a[1]=runif(1)
try1<- ode(y=yini,func=pol,times=seq(0,60,by=0.01),parms=c(0.5,0.5,0.5,0.5,0.5,0.5,0.5,a[1])) 
 gt1= try1[,6]/(try1[,6]+2*try1[,4]) # gt is the deterministic counterpart fot datat for each a
 
# Q: it seems that changing a[1] would give exactly the same as the simulated "data"??? head(gt1) exactly same as head(datat) 0.35

# likelihood L for datat using guess:
L=rep(1,2)
 for (tmpts in 1:10) {
   P=dnorm(datat[tmpts],gt1[tmpts],0.1) #assuming variance to be 1 for now
   L[1]=L[1]*P
  }
 L[1] # I tried 0.35 for 0.35 but still get 0... as evenif you  get max(dnorm(0)=0.4 each time, you multiply 0.4 by 6000 times you get zero eventually..

# Using for-loop
for (MCtime in 1:(n-1)){
# now propose a new candidate for a:
b=rnorm(1,a[MCtime],0.1) #assuming variance to be 0.1 at this stage
if (b<0 || b>1){
 a[MCtime+1]=a[MCtime]
} else {
 try2<- ode(y=yini,func=pol,times=seq(0,60,by=0.01),parms=c(0.5,0.5,0.5,0.5,0.5,0.5,0.5,b)) 
 gt2= try2[,6]/(try2[,6]+2*try2[,4]) 

# to compute MH:
 for (tmpts in 1:10) {
   P=dnorm(datat[tmpts],gt2[tmpts],0.1) #assuming variance to be 1 for now
   L[2]=L[2]*P
  }
 L[2] #
 
  alpha=min(1,L[2]/L[1])
   u=runif(1)
   if (u<=alpha){
	a[MCtime+1]=b
	L[1]=L[2]
      } else{
		a[MCtime+1]=a[MCtime]

	 }
	 }
}
 # keep on running.. and if ends aim to run:
 plot(a[1:1000]) 


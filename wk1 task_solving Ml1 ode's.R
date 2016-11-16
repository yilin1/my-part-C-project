pol<-function(t,y,mu){
	list(c(
	mu[1]*y[1]*(1-(y[1]+y[2]+y[3]+y[4]+y[5]))-mu[2]*y[1],
	mu[2]*y[1]+mu[3]*y[2]*(1-(y[1]+y[2]+y[3]+y[4]+y[5]))-mu[4]*y[2],
	mu[4]*y[2]-mu[5]*y[3],
	mu[6]*y[4]*(1-(y[1]+y[2]+y[3]+y[4]+y[5]))-mu[7]*y[4],
	mu[7]*y[4]-mu[8]*y[5]
	))
}

install.packages("deSolve")
library(deSolve)
yini<-c(w1=0.9,w2=0.02,w3=0.02,w4=0.02,w5=0.03)

try1<-ode(y=yini,func=pol,times=seq(0,60,by=0.01),parms=c(0.09,0.11,0.2,0.2,0.9,0.91,0.9,0.09)) 
## i was aiming for a relapse plot, but it didn't turn up. actually, no matter what combination i chose, the general pattern is always the same, like this...
plot(try1,which='w1')
plot(try1,main='aiming for a relapse')

try2<-ode(y=yini,func=pol,times=seq(0,60,by=0.01),parms=c(0.91,0.91,0.8,0.82,0.09,0.01,0.09,0.9)) 
plot(try2,main='aiming for a remission')

## especially for the plot for x0 and y0, in whatever combi, couldn't stop them from decreasing to zero..

plot(try1[,1],try1[,6]/(try1[,6]+2*try1[,4]),main='BCR-ABL Level,relapse?')
plot(try2[,1],try2[,6]/(try2[,6]+2*try2[,4]),main='BCR-ABL Level, remission')

plot(try1[,1],try1[,2]+try1[,3]+try1[,4]+try1[,5]+try1[,6])
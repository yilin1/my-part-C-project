#source("/Users/yilinsmac/Desktop/sigfile functions/14d/testhistlk14 function.r")

# this might not work as the prior for rho is not uniform, hence the joint prior is not uniform
testhistlk14=function(mc,m){
#mc is the output of a 14d myMCMC function
#m is the index of the parameter interested
#returns a histogram with scaled (not logged) likelihood plotted on top
hist(mc[,m],freq=FALSE,main=paste('m=',m),xlim=c(0,1),ylab='density')


seq1=seq(0.01,0.99,by=0.001)
nrow=length(seq1)
a=matrix(0.5,ncol=14,nrow=nrow)
a[,14]=rep(0.01,nrow)
for (j in 1:length(seq1)){
	a[j,m]=j*0.001
}
   likvec=lapply(seq(1,dim(a)[1],by=1),function(i) myloglk14(a1=a[i,],psdata=psdata,t=t,tby=tby,erv1=erv1))

lines(seq(0.01,0.99,by=0.001),exp(as.numeric(likvec))/max(exp(as.numeric(likvec)))*max(h$density), 
xlab="par", ylab="likelihood",main=paste("m=",m),col='blue')
}
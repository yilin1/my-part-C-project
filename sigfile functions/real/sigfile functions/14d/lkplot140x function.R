#source("/Users/yilinsmac/Desktop/sigfile functions/14d/lkplot140x function (not logged).r")

## plot of likelihood (not logged)
lkplot140x=function(m,psdata,parvec,x=0.1,t=50,tby=1,erv1=1){ 
	# m is the index of the parameter of interest
# psdata is the real data to compute the log-likelihood of the indexed parameter
# parvec is a 1*14 vector specifying the true value of all parameters (including the m-indexed one)
#x is the range of the likelihood you want, x in (0.01,0.99)
#this function returns given other parameter specified by parvec, the likelihood plot of the parameter indexed m.

seq1=seq(0.01,x,by=0.001)
nrow=length(seq1)
a=matrix(0.5,ncol=14,nrow=nrow)
#a[,14]=rep(0.01,nrow)
for (j in 1:14){
a[,j]=rep(parvec[j],nrow)
}

for (j in 1:length(seq1)){
	a[j,m]=j*0.001
}

   likvec=lapply(seq(1,dim(a)[1],by=1),function(i) myloglk14(a1=a[i,],psdata=psdata,t=t,tby=tby,erv1=erv1))


# plot(seq(0.01,x,by=0.001),exp(as.numeric(likvec))/max(exp(as.numeric(likvec)))*max(h$density), xlab="par", ylab="likelihood",main=paste("m=",m))

llp=plot(seq(0.01,x,by=0.001),exp(as.numeric(likvec)), xlab="par", ylab="likelihood",xlim=c(0,x),main=paste("m=",m))
abline(v=parvec[m])

return(llp)
}

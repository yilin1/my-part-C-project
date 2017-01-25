#source("/Users/yilinsmac/Desktop/sigfile functions/14d/loglkplot14 function.r")

## plot of log-likelihood
loglkplot140x=function(m,psdata,x=0.1,parvec,t=50,tby=1,erv1=1){ 
# this function is the test for myloglk14() function, 
#this function returns given other parameter specified by parvec, the likelihood plot of the parameter indexed m.
# i.e. base setting is all other parameter are specified by the vector parvec (dim=1*14)
# we vary the parameter indexed m.
# m is the index of the parameter of interest (from 1-13 only)
#x is the range of the likelihood you want, x in (0.01,0.99)

# psdata is the real data to compute the log-likelihood of the indexed parameter

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

  llp=plot(seq(0.01,x,by=0.001),as.numeric(likvec), xlab="par", ylab="log-likelihood",xlim=c(0,x),main=paste("m=",m))

abline(v=parvec[m])


return(llp)
}

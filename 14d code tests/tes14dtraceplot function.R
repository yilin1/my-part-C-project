tes14dtraceplot=function(mvd,numsamp=15,dimen){
	
	#mvd is the output lattice of test14d()function
	#dimen is the number of parameters you infer in one iteration, should be consistent with mvd
	#numsamp is number of samples, i.e. the number of integers drawed from 8C(dimen),should be consistent with mvd
	
par(mfrow=c(3,5)) #only if numsamp=15
for (j in 1:numsamp){
#v=V[,j]#j
# print(v-5)
chain=mvd[,(dimen*(j-1)+1):(dimen*j)]
traceplot14(chain,m=1,last=300)

for (i in 2:dimen){
lines(chain[,i],col=i)
}

}
legend(x=250,y=1,legend=paste(1:dimen),lty=rep('solid',dimen),col=1:dimen)
	
}

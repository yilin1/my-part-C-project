erv2=rep(0.01,14)
erv2[1]
erv2[2]
erv2[3]
erv2[4]
erv2[5]
erv2[6]=0.08
erv2[7]=0.008
erv2[8]=0.022
erv2[9]=0.009
erv2[10]=0.04
erv2[11]=0.004
erv2[12]=0.003
erv2[13]=0.008

mvd3=test14d(dimen=3,erv2=erv2,numsamp=15,k=30,niter=1000)
mvd4b=test14d(dimen=4,erv2=erv2,numsamp=15,k=30,niter=1000)
mvd5=test14d(dimen=5,numsamp=15,k=30,niter=6000)
mvd5b=test14d(dimen=5,numsamp=15,k=50,niter=10000)
mvd5c=test14d(dimen=5,numsamp=10,k=50,niter=500,erv2=erv2)
mvd5d=test14d(dimen=5,numsamp=15,k=30,niter=6000)


mvd6=test14d(dimen=6,numsamp=28,k=10,niter=1000,erv2=erv2)
mvd7=test14d(dimen=7,numsamp=8,k=50,niter=1000,erv2=erv2)
mvd8=myMCMC14a_vtest_evk(psdata=psdata,k=10,v=6:13,n=1000,erv2=erv2)
for (i in 1:28){
	print(i)
print(tail(mvd6[,(6*i-5):(6*i)],5))
}
i=2
tail(mvd5b[,(5*i-4):(5*i)],10)
i=3
tail(mvd5b[,(5*i-4):(5*i)],5)
i=4
tail(mvd5b[,(5*i-4):(5*i)],5)
i=5
tail(mvd5b[,(5*i-4):(5*i)],5)
i=6
tail(mvd5b[,(5*i-4):(5*i)],5)
i=7
tail(mvd5b[,(5*i-4):(5*i)],5)
i=8
tail(mvd5b[,(5*i-4):(5*i)],5)
i=9
tail(mvd5b[,(5*i-4):(5*i)],5)
i=10
tail(mvd5b[,(5*i-4):(5*i)],5)
i=11
tail(mvd5b[,(5*i-4):(5*i)],5)
i=12
tail(mvd5b[,(5*i-4):(5*i)],5)
i=13
tail(mvd5b[,(5*i-4):(5*i)],5)
i=14
tail(mvd5b[,(5*i-4):(5*i)],5)
i=15
tail(mvd5b[,(5*i-4):(5*i)],5)

quartz()
setwd("/Users/yilinsmac/Desktop/14d code tests")
pdf('mvd6,n=10000,k=50.pdf')
tes14dtraceplot(mvd7,numsamp=8,dimen=7)
dev.off()
setwd('/Users/yilinsmac/Desktop')


## redundant codes:
# using same data as 1d and 2d
erv2=rep(0.01,14)
erv2[14]=0
psdata=pseudodata(i1=0.2, i2=0.2, i3=0.3, i4=0.4, i5=0.4,c1=0.9, c2=0.8,c3=0.7,c4=0.6, c5=0.6, c6=0.4, c7=0.3, c8=0.2) #sf=0.01 by default

# choose 10 out of 56 possible 3d combinations.
comb5=combn(8,5)
w=sample(1:56,10,replace=FALSE)
v0=comb5[,w]
V=v0+5
print(V)

mv5={}
for (i in 1:10){
v=V[,i]
print(v)
append=myMCMC14a_vtest_evk(psdata=psdata,k=20,v=v,n=3000,erv2=erv2)
mv5=cbind(mv5,append[,v])
}


par(mfrow=c(2,5))
for (j in 1:10){
v=V[,j]#j
print(v)
chain=mv5[,c(5*j-4,5*j-3,5*j-2,5*j-1,5*j)]#5j-4,5j-3,5j-2,5j-1,5j
traceplot14(chain,m=1,last=300)
lines(chain[,2],col='red')
lines(chain[,3],col='blue')
lines(chain[,4],col='green')
lines(chain[,5],col='yellow')

#legend(x=50,y=1,legend=c('[1]','[2]','[3]','[4]','[5]'),lty=c('solid','solid','solid','solid','solid'),col=c('black','red','blue','green','yellow'))

print(v-5)
print(tail(chain,5))
}

sighist14(mc=append,m=v[2],last=500)
indivtracplot14(append,last=500)

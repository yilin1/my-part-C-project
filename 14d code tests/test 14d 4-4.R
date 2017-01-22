mvd4=test14d(dimen=4,numsamp=15,k=30,niter=6000)

i=1
tail(mvd4[,(4*i-3):(4*i)],5)
i=2
tail(mvd4[,(4*i-3):(4*i)],5)
i=3
tail(mvd4[,(4*i-3):(4*i)],5)
i=4
tail(mvd4[,(4*i-3):(4*i)],5)
i=5
tail(mvd4[,(4*i-3):(4*i)],5)
i=6
tail(mvd4[,(4*i-3):(4*i)],5)
i=7
tail(mvd4[,(4*i-3):(4*i)],5)
i=8
tail(mvd4[,(4*i-3):(4*i)],5)
i=9
tail(mvd4[,(4*i-3):(4*i)],5)
i=10
tail(mvd4[,(4*i-3):(4*i)],5)
i=11
tail(mvd4[,(4*i-3):(4*i)],5)
i=12
tail(mvd4[,(4*i-3):(4*i)],5)
i=13
tail(mvd4[,(4*i-3):(4*i)],5)
i=14
tail(mvd4[,(4*i-3):(4*i)],5)
i=15
tail(mvd4[,(4*i-3):(4*i)],5)

setwd("/Users/yilinsmac/Desktop/14d code tests")
pdf('4dB,n=6000.pdf')
tes14dtraceplot(mvd4,numsamp=15,dimen=4)
dev.off()
setwd('/Users/yilinsmac/Desktop')

# redundant codes
# using same data as 1d and 2d
erv2=rep(0.01,14)
erv2[14]=0
psdata=pseudodata(i1=0.2, i2=0.2, i3=0.3, i4=0.4, i5=0.4,c1=0.9, c2=0.8,c3=0.7,c4=0.6, c5=0.6, c6=0.4, c7=0.3, c8=0.2) #sf=0.01 by default

# choose 10 out of 56 possible 3d combinations.
comb4=combn(8,4)
w=sample(1:56,13,replace=FALSE)
v0=comb4[,w]
V=v0+5
print(V)

mv4={}
for (i in 1:13){
v=V[,i]
print(v)
append=myMCMC14a_vtest_evk(psdata=psdata,k=10,v=v,n=3000,erv2=erv2)
mv4=cbind(mv4,append[,v])
}



v=V[,10]#j
print(v)
chain=mv4[,c(25,26,27)]#4j-3,4j-2.4j-1,4j
traceplot14(chain,m=1,last=300)
lines(chain[,2],col='red')
lines(chain[,3],col='blue')
lines(chain[,4],col='green')

legend(x=250,y=1,legend=c('[1]','[2]','[3]','[4]'),lty=c('solid','solid','solid','solid'),col=c('black','red','blue','green'))

tail(chain,20)

sighist14(mc=append,m=v[2],last=500)
indivtracplot14(append,last=500)


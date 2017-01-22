# using same data as 1d and 2d
erv2=rep(0.01,14)
erv2[14]=0
psdata=pseudodata(i1=0.2, i2=0.2, i3=0.3, i4=0.4, i5=0.4,c1=0.9, c2=0.8,c3=0.7,c4=0.6, c5=0.6, c6=0.4, c7=0.3, c8=0.2) #sf=0.01 by default

# choose 10 out of 56 possible 3d combinations.
comb3=combn(8,3)
w=sample(1:56,10,replace=FALSE)
v0=comb3[,w]
V=v0+5
print(V)

mv3={}
for (i in 2:10){
v=V[,i]
print(v)
append=myMCMC14a_vtest_evk(psdata=psdata,k=10,v=v,n=3000,erv2=erv2)
mv3=cbind(mv3,append[,v])
}

v=V[,10]#j
print(v)
chain=mv3[,c(25,26,27)]#3(j-1)-2,3(j-1)-1,3(j-1)
traceplot14(chain,m=1,last=300)
lines(chain[,2],col='red')
lines(chain[,3],col='blue')
legend(x=250,y=1,legend=c('v[1]','v[2]','v[3]'),lty=c('solid','solid','solid'),col=c('black','red','blue'))

tail(chain,20)

sighist14(mc=append,m=v[2],last=500)
indivtracplot14(append,last=500)

##those seem to have a problem picked out:
# v=(7,11,13),(6,7,10),(8,9,10),(9,12,13),(7,11,12)
v1=c(7,11,13)
append1=myMCMC14a_vtest_evk(psdata=psdata,k=10,v=v1,n=5000,erv2=erv2)
traceplot14(append1,m=7,last=300)
lines(append1[,11],col='red')
lines(append1[,13],col='blue')
legend(x=250,y=1,legend=c('append1[1]','append1[2]','append1[3]'),lty=c('solid','solid','solid'),col=c('black','red','blue'))

tail(append1[,v1],20)

v2=c(6,7,10)
append2=myMCMC14a_vtest_evk(psdata=psdata,k=10,v=v2,n=4500,erv2=erv2)
traceplot14(append2,m=6,last=300)
lines(append2[,7],col='red')
lines(append2[,10],col='blue')
legend(x=250,y=1,legend=c('append2[1]','append2[2]','append2[3]'),lty=c('solid','solid','solid'),col=c('black','red','blue'))

tail(append2[,v2],20)

v3=c(8,9,10)
append3=myMCMC14a_vtest_evk(psdata=psdata,k=20,v=v3,n=10000,erv2=erv2)
traceplot14(append3,m=8,last=300)
lines(append3[,9],col='red')
lines(append3[,10],col='blue')
legend(x=200,y=1,legend=c('append3[8]','append3[9]','append3[10]'),lty=c('solid','solid','solid'),col=c('black','red','blue'))
tail(append3[,v3],20)


v4=c(9,12,13)
append4=myMCMC14a_vtest_evk(psdata=psdata,k=10,v=v4,n=5000,erv2=erv2)
traceplot14(append4,m=9,last=300)
lines(append4[,12],col='red')
lines(append4[,13],col='blue')
legend(x=250,y=1,legend=c('append4[9]','append4[12]','append4[13]'),lty=c('solid','solid','solid'),col=c('black','red','blue'))
tail(append4[,v4],20)

v5=c(7,11,12)
append5=myMCMC14a_vtest_evk(psdata=psdata,k=10,v=v5,n=6000,erv2=erv2)
traceplot14(append5,m=7,last=10)
lines(append5[,11],col='red')
lines(append5[,12],col='blue')
legend(x=250,y=1,legend=c('append5[7]','append5[11]','append5[12]'),lty=c('solid','solid','solid'),col=c('black','red','blue'))
tail(append5[,v5],20)





## redundant codes:
traceplot14(append,m=v[1],last=400)
lines(append[,v[2]],col='red')
lines(append[,v[3]],col='blue')
legend(x=3300,y=1,legend=c('v[1]','v[2]','v[3]'),lty=c('solid','solid','solid'),col=c('black','red','blue'))

tail(append[,v],20)

sighist14(mc=append,m=v[2],last=500)
indivtracplot14(append,last=500)
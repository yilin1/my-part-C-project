psdata=pseudodata()
m200=myMCMC14(psdata,n=200)
m1000=myMCMC14(psdata,n=1000)
m10000=myMCMC14(psdata,n=10000)
m1000[,4]
m1000[,]
m1000[,4]
m1000[,4]
MCitr=1
n=300
d=14
MCitr=MCitr+1
erv21=0.1
erv22=0.05
erv23=0.1

d28=pseudodata(i2=0.8) #sf=0.01 by default
par(mfrow=c(1,2))
loglkplot14(d28,m=2)
abline(v=0.8)
loglkplot(d28,m=2)
abline(v=0.8)

mc28b=myMCMC14b_block(d28,n=2000)
qtfitplot14(psdata=d28,mc=mc38a2,last=1000,spsize=100)

erv2=c(0.02,0.02,0.02,0.02,0.01,0.01,0.005,0.005,0.005,0.01,0.005,0.005,0.005,0.0005)
mca=myMCMC14a(d28,n=500,erv2=erv2)

hist(mc[,2],xlim=c(0,1),freq=FALSE,ylab='density')
abline(v=0.8)
mc1d=myMCMC(m=2,d28,n=1000)

# testhistlk14(mc,m=2)
loglkplot14(d28,m=2)
abline(v=0.8)
lkplot14(d28,m=2)
abline(v=0.8)

#mc28b=myMCMC14b(d28,n=200000)
#testhistlk14(mc14b,m=2)

d38=pseudodata(i3=0.8) #so sf=0.01 by default
par(mfrow=c(1,2))
loglkplot14(d38,m=3)
abline(v=0.8)
loglkplot(d38,m=3)
abline(v=0.8)
lkplot14(d38,m=3)
abline(v=0.8)

erv2=c(0.025,0.035,0.02,0.02,0.008,0.015,0.016,0.01,0.005,0.01,0.01,0.004,0.008,0.0001)
mc38a=myMCMC14a(d38,n=20000,erv2=erv2)
mc38a2=myMCMC14a(d38,n=20000,erv2=erv2)
mc38a3=myMCMC14a(d38,n=20000,erv2=erv2)
mc38a4=myMCMC14a(d38,n=20000,erv2=erv2)
qtfitplot14(psdata=d38,mc=mc38a2,last=1000,spsize=100)
plot(mc38a[,14],type='l',ylim=c(0,1),main='traceplot')
lines(mc38a2[,14],ylim=c(0,1),col='blue')
lines(mc38a3[,1],ylim=c(0,1),col='red')
lines(mc38a4[,1],ylim=c(0,1),col='green')

mc38b1=myMCMC14b_block(d38,n=20000)
qtfitplot14(psdata=d38,mc=mc38ab1,last=1000,spsize=100)

hist(mc38a[,3],xlim=c(0,1),freq=FALSE,ylab='density')
abline(v=0.8)
mc1d=myMCMC(m=3,d38,n=1000)

p48=pseudodata(i4=0.8)
par(mfrow=c(1,2))
loglkplot14(d48,m=4)
abline(v=0.8)
loglkplot(d48,m=4)
abline(v=0.8)
erv2=c(0.025,0.035,0.02,0.02,0.008,0.015,0.016,0.01,0.005,0.01,0.01,0.004,0.008,0.0001)
mc48a1=myMCMC14a(p48,n=40000,erv2=erv2)
mc48a2=myMCMC14a(p48,n=40000,erv2=erv2)
mc48a3=myMCMC14a(p48,n=40000,erv2=erv2)
mc48a4=myMCMC14a(p48,n=40000,erv2=erv2)

mc48b1=myMCMC14b_block(p48,n=30000, erv21=0.0001,erv22=0.00001,erv23=0.001)
mc48b2=myMCMC14b_block(p48,n=30000, erv21=0.0001,erv22=0.00001,erv23=0.001)
mc48b3=myMCMC14b_block(p48,n=30000, erv21=0.0001,erv22=0.00001,erv23=0.001)
mc48b4=myMCMC14b_block(p48,n=30000, erv21=0.0001,erv22=0.00001,erv23=0.001)


p48=pseudodata(i4=0.8)

pdtry=pseudodata(i1=0.2,i2=0.4,i3=0.6,i4=0.8,i5=0.3,c1=0.3,c2=0.75,c3=0.8,c4=0.35,c5=0.65,c6=0.6,c7=0.7,c8=0.8)
mv1=myMCMC14a_evk(psdata=pdtry,k=500,n=100000)
indivtracplot14(mv1,last=10)
tail(mv1,20)

p58=pseudodata(i5=0.8)
par(mfrow=c(1,2))
loglkplot14(d58,m=5)
abline(v=0.8)
loglkplot(d58,m=5)
abline(v=0.8)


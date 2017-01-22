erv2=rep(0.01,14)
erv2[14]=0
psdata=pseudodata(i1=0.2, i2=0.2, i3=0.3, i4=0.4, i5=0.5,c1=0.9, c2=0.8,c3=0.7,c4=0.6, c5=0.5, c6=0.4, c7=0.3, c8=0.2) #sf=0.01 by default

mv={}
for (v in 1:13){
apend=myMCMC14a_vtest(psdata,v=v,n=1000,erv2=erv2)
mv=cbind(mv,apend[,v])
}

quartz()
setwd("/Users/yilinsmac/Desktop")
pdf("1-d checking done.pdf")
par(mfrow=c(3,5))
for (i in 1:13){
traceplot14(mv,m=i)
}
dev.off()
setwd("/Users/yilinsmac")

m6=myMCMC14a_vtest(psdata,v=6,n=2000)
traceplot14(m6,m=6,last=2000)
lines(m6[,14],col='red')

parvec=c(0.2,0.2,0.3,0.4,0.5,0.9,0.8,0.7,0.6,0.5,0.4,0.3,0.2,0.01)
a1=c(0.2,0.2,0.3,0.4,0.5,0.09638197,0.8,0.7,0.6,0.5,0.4,0.3,0.2,0.01)
a0=c(0.2,0.2,0.3,0.4,0.5,0.07,0.8,0.7,0.6,0.5,0.4,0.3,0.2,0.01)
lkplot140x(psdata,m=6,x=0.05,parvec=parvec)
new=myloglk14(a1=a1, psdata=psdata)
old=myloglk14(a1=a0, psdata=psdata)

par(mfrow=c(3,1))
m7=myMCMC14a_vtest(psdata,v=7,n=1000,erv2=erv2)
traceplot14(m7,m=7,last=1000)
lines(m7[,14],col='red')
acf(m7[,7])
head(cbind(m7[,7],m7[,14]),20)
quartz()
lkplot140x(psdata=psdata,m=7,x=0.12,parvec=parvec)
parvecm7a=c(0.2,0.2,0.3,0.4,0.5,0.9,0.1,0.7,0.6,0.5,0.4,0.3,0.2,0.01)
parvecm7b=c(0.2,0.2,0.3,0.4,0.5,0.9, 0.09835124,0.7,0.6,0.5,0.4,0.3,0.2,0.01)

la=myloglk14(psdata=psdata,a1=parvecm7a)
lb=myloglk14(psdata=psdata,a1= parvecm7b)
loglkplot140x(m=7,psdata=psdata,parvec=parvec,x=0.1)


m9=myMCMC14a_vtest(psdata,v=9,n=2000)
traceplot14(m9,m=9,last=2000) 
lines(m9[,14],col='red')
head(cbind(m9[,9],m9[,14]),20)
lkplot140x(psdata,m=9,x=0.05,parvec=parvec)





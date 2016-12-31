# below is m=1,3,5,7,9,11,12,13 with 0.2, 0.5, 0.8
## m=1 (0.2, 0.5, 0.8)
a12=pseudodata(i1=0.2)
ddd(a12,m=1,v=0.2,n=16000)

a15=pseudodata(i1=0.5)
ddd(a15,m=1,v=0.5,n=16000)

a18=pseudodata(i1=0.8)
ddd(a18,m=1,v=0.8,n=16000)

## m=3 (0.2, 0.5, 0.8)
a32=pseudodata(i3=0.2)
ddd(a32,m=3,v=0.2,n=2000)

a35=pseudodata(i3=0.5)
ddd(a35,m=3,v=0.5,n=2000)

a38=pseudodata(i3=0.8)
ddd(a38,m=3,v=0.8,n=2000)

## m=5 (0.2, 0.5, 0.8)
a52=pseudodata(i5=0.2)
ddd(a52,m=5,v=0.2,n=2000)

a55=pseudodata(i5=0.5)
ddd(a55,m=5,v=0.5,n=2000)

a58=pseudodata(i5=0.8)
ddd(a58,m=5,v=0.8,n=2000)

## m=7 (0.2, 0.5, 0.8)
a72=pseudodata(c2=0.2)
ddd(a72,m=1,v=0.2,n=2000)

a75=pseudodata(c2=0.5)
ddd(a75,m=1,v=0.5,n=2000)

a78=pseudodata(c2=0.8)
ddd(a78,m=1,v=0.8,n=2000)

## m=9 (0.2, 0.5, 0.8)
a92=pseudodata(c4=0.2)
ddd(a92,m=9,v=0.2,n=2000)

a95=pseudodata(c4=0.5)
ddd(a95,m=9,v=0.5,n=2000)

a98=pseudodata(c4=0.8)
ddd(a98,m=9,v=0.8,n=2000)


## m =11 (0.2, 0.5, 0.8) 
a112=pseudodata(c6=0.2)
ddd(a112,m=11,v=0.2,n=3000)

a115=pseudodata(c6=0.5)
ddd(a115,m=11,v=0.5,n=2000)

a118=pseudodata(c6=0.8)
ddd(a118,m=11,v=0.8,n=3000)

## m =12 (0.2, 0.5, 0.8)
a122=pseudodata(c7=0.2)
ddd(a125,m=12,v=0.2,n=2000)

a125=pseudodata(c7=0.5)
ddd(a125,m=12,v=0.5,n=2000)

a128=pseudodata(c7=0.8)
ddd(a128,m=12,v=0.8,n=2000)

## m =13 (0.2, 0.5, 0.8)
a132=pseudodata(c8=0.2)
ddd(a132,m=13,v=0.2,n=2000)

a135=pseudodata(c8=0.5)
ddd(a135,m=13,v=0.5,n=2000)

a138=pseudodata(c8=0.8)
ddd(a138,m=13,v=0.8,n=2000)

## grplots for m=1 and 11  0.2, 0.5, 0.8
par(mfrow=c(2,3))
c12a=myMCMC(a12,m=1,n=16000)
c12b=myMCMC(a12,m=1,n=16000)
grplot(c12a,c12b)

c15a=myMCMC(a15,m=1,n=16000)
c15b=myMCMC(a15,m=1,n=16000)
grplot(c15a,c15b)

c18a=myMCMC(a18,m=1,n=16000)
c18b=myMCMC(a18,m=1,n=16000)
grplot(c18a,c18b)

c112a=myMCMC(a112,m=11,n=3000)
c112b=myMCMC(a112,m=11,n=3000)
grplot(c112a,c112b)

c115a=myMCMC(a115,m=11,n=3000)
c115b=myMCMC(a115,m=11,n=3000)
grplot(c115a,c115b)

c118a=myMCMC(a118,m=11,n=3000)
c118b=myMCMC(a118,m=11,n=3000)
grplot(c118a,c118b)







s=detindiv()
par(mfrow=c(2,3))
plot(s[,1],main='x0')
plot(s[,2],main='x1')
plot(s[,3],main='x2')
plot(s[,4],main='y0')
plot(s[,5],main='y1')

a13=pseudodata(i3=0.2)
c13=myMCMC(a13,m=3,n=2000)
h=hist(c13,freq=FALSE)

likvec=lapply(seq(0.01,0.99,by=0.001),function(i) myloglk(m=3,a1=i,t=50,tby=1,psdata=a13,erv1=0.1))

lines(seq(0.01,0.99,by=0.001),exp(as.numeric(likvec))/max(exp(as.numeric(likvec)))*max(h$density), xlab="par", ylab="likelihood",main=paste("m=",3))





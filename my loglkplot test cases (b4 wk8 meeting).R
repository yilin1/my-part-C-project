par(mfrow=c(2,2))

	loglkplot(m=1,pseudodata(i1=0.8),tby=0.1)
	loglkplot(m=2,pseudodata(i2=0.8),tby=0.1)
	loglkplot(m=3,pseudodata(i3=0.8),tby=0.1)
	loglkplot(m=4,pseudodata(i4=0.8),tby=0.1)
	loglkplot(m=5,pseudodata(i5=0.8),tby=0.1)
	loglkplot(m=6,pseudodata(c1=0.8),tby=0.1)
	loglkplot(m=7,pseudodata(c2=0.8),tby=0.1)
	loglkplot(m=8,pseudodata(c3=0.8),tby=0.1)
	loglkplot(m=9,pseudodata(c4=0.8),tby=0.1)
	loglkplot(m=10,pseudodata(c5=0.8),tby=0.1)
	loglkplot(m=11,pseudodata(c6=0.8),tby=0.1)
	loglkplot(m=12,pseudodata(c7=0.8),tby=0.1)
	loglkplot(m=13,pseudodata(c8=0.8),tby=0.1)

##  0.8 cases: m=4,7,9,12

par(mfrow=c(2,2))
pvalcpa(m=4,pseudodata(i4=0.8),tby=0.1)
pvalcpa(m=7,pseudodata(c2=0.8),tby=0.1)
pvalcpa(m=9,pseudodata(c4=0.8),tby=0.1) # this is remarkable? one line is significantly different from others.
pvalcpa(m=12,pseudodata(c7=0.8),tby=0.1)

# look at those 0.8's
par(mfrow=c(2,2))
loglkplot(m=4,pseudodata(i4=0.8),tby=0.1)
loglkplot(m=7,pseudodata(c2=0.8),tby=0.1)
loglkplot(m=9,pseudodata(c4=0.8),tby=0.1)
loglkplot(m=12,pseudodata(c7=0.8),tby=0.1) 

# if it is because 0.8 is too large...
par(mfrow=c(2,2))
loglkplot(m=4,pseudodata(i4=0.2),tby=0.1)
loglkplot(m=7,pseudodata(c2=0.2),tby=0.1)
loglkplot(m=9,pseudodata(c4=0.2),tby=0.1)
loglkplot(m=12,pseudodata(c7=0.2),tby=0.1) # ???

# and for 0.5
par(mfrow=c(2,2))
loglkplot(m=4,pseudodata(i4=0.5),tby=0.1)
loglkplot(m=7,pseudodata(c2=0.5),tby=0.1)
loglkplot(m=9,pseudodata(c4=0.5),tby=0.1)
loglkplot(m=12,pseudodata(c7=0.5),tby=0.1) 

#
par(mfrow=c(2,2))
psplusdt(m=4,a=0.8) 
psplusdt(m=7,a=0.8)
psplusdt(m=9,a=0.8)
psplusdt(m=12,a=0.8)

## 4-chain plot
#i4
par(mfrow=c(2,2))
chainplot(m=4,pseudodata(i4=0.8),n=3000)
chainplot(m=4,pseudodata(i4=0.5),n=3000)
chainplot(m=4,pseudodata(i4=0.2),n=3000)
pvalcpa(pseudodata(i4=0.2),m=4)

traceplot(myMCMC(pseudodata(i4=0.2),n=3000,m=4))

# c2
par(mfrow=c(2,2))
chainplot(m=7,pseudodata(c2=0.8))
chainplot(m=7,pseudodata(c2=0.5))
chainplot(m=7,pseudodata(c2=0.2))
pvalcpa(pseudodata(c2=0.2),m=7)

# c4
par(mfrow=c(2,2))
chainplot(m=9,pseudodata(c4=0.8))
chainplot(m=9,pseudodata(c4=0.5))
chainplot(m=9,pseudodata(c4=0.2))
pvalcpa(pseudodata(c4=0.2),m=9)

# c7
par(mfrow=c(2,2))
chainplot(m=12,pseudodata(c7=0.8))
chainplot(m=12,pseudodata(c7=0.5))
chainplot(m=12,pseudodata(c7=0.2))
pvalcpa(pseudodata(c7=0.2),m=12)

## convergence plot

#m=4
par(mfrow=c(2,2))
a1=myMCMC(m=4,pseudodata(i4=0.8))
a2=myMCMC(m=4,pseudodata(i4=0.8))
acf(a1,main=paste('acf a1','m=4','0.8'))
acf(a2,main=paste('acf a2','m=4','0.8'))
hist(a1)
hist(a2)
grplot(a1,a2)

# m=7
par(mfrow=c(2,2))
b1=myMCMC(m=7,pseudodata(c2=0.8))
b2=myMCMC(m=7,pseudodata(c2=0.8))
acf(b1,main=paste('acf b1','m=7','0.8'))
acf(b2,main=paste('acf b2','m=7','0.8'))
hist(b1)
hist(b2)
grplot(b1,b2)

# m=9
par(mfrow=c(2,2))
c1=myMCMC(m=9,pseudodata(c4=0.8))
c2=myMCMC(m=9,pseudodata(c4=0.8))
acf(c1,main=paste('acf c1','m=9','0.8'))
acf(c2,main=paste('acf c2','m=9','0.8'))
hist(c1)
hist(c2)
grplot(c1,c2)

# m=12
par(mfrow=c(2,2))
d1=myMCMC(m=12,pseudodata(c7=0.8))
d2=myMCMC(m=12,pseudodata(c7=0.8))
acf(d1,main=paste('acf d1','m=12','0.8'))
acf(d2,main=paste('acf d2','m=12','0.8'))
hist(d1)
hist(d2)
grplot(d1,d2)

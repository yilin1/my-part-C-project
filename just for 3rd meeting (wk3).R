############### real data fit
#use the average of 69:
mcmm=myMCMC14lognorm(data=mm,v=1:14,a0=rep(0.5,14),k=50,erv1=1,erv2=erv2_24,tby=1,n=10000)
mcmmf=myMCMC14a_vtest_evk_realtestyesfuben(data=mm,v=1:14,n=20000,k=20,erv2=erv2_24)
qtfitplot14_real(data=mm,mc=mcmmf,last=200,spsize=50,predict=FALSE)



#use the average of 69: (remission fit)
mcmm=myMCMC14lognorm(data=mm,v=1:14,a0=rep(0.5,14),k=50,erv1=1,erv2=erv2_24,tby=1,n=10000)
remissionfit=myMCMC14a_vtest_evk_realtestyesfuben(data=mm,v=1:14,n=20000,k=20,erv2=erv2_24)
qtfitplot14_real(data=mm,mc=remissionfit,last=200,spsize=50,predict=FALSE)

#cp results: not good
plot(density(remissionfit[,9])) #dx is c4,m=9
for (i in 6:13){
  sighist14_lines(remissionfit,m=i,last=500)
}

#### pick a random relapse (relapse fit) (it seems that 7 has the most data)
rd=dragdata()
unique(rd[which(rd$outcome=="relapse"),]$Patient.No)
p7=whichdata(7)
p7
relap7fit=myMCMC14a_vtest_evk_realtestyesfuben(data=p7,v=1:14,n=30000,k=20,erv2=erv2_24)
qtfitplot14_real(data=p7,mc=relap7fit,last=200,spsize=50,predict=FALSE)
#cp results
plot(density(relap7fit[,9])) #dx is c4,m=9
for (i in 6:13){
  sighist14_lines(relap7fit,m=i,last=500)
}



########### Fake Data:
library(mcmcse)
minESS(p=14)
multiESS(realtest34)


## 0 var(/theta_i bar)
for (i in 1:14){
  print(paste("i=",i,"var=",var(realtest28[,i])/ess(realtest28)[i]))}
##

## 1. GEI TA KAN: (histcp ??)
for (i in 1:14){
  #par(mfrow=c(2,1))
  histocp(realtest28,realtest34,last=100,m=i) 
  histocp(realtest13,realtest14,realtest15,last=100,m=i) 
}
graphics.off()
## 
sighist14_lines(realtest14,m=10,last=10)


## 2. GEI TA KAN: (acf hao)
for (i in 1:14){
  #par(mfrow=c(1,2))
  acf(realtest28[,i])
  acf(realtest34[,i])
  #acf(realtest17[,i])
}
##

indivacf14_real(mc=realtest28)

qtfitplot14_real(data=psdata,mc=realtest28,last=200,spsize=50,predict=FALSE)

## 3. GEI TA KAN: (traces: Wo bu hui kan:)
for (i in 1:14){
  traceplot14(mc=realtest28,m=i,last=500)
  lines(realtest34[,i],col=2)
  lines(subchain(realtest26,m=i,k=20),col=3)
}
##
traceplot14(mc=realtest14,m=4,last=500)


indivtracplot14(mc=realtest24,last=300)
graphics.off()

## 4. GEI TA KAN (cummean hao)
for (i in 1:14){
  #quartz()
  #cummean(subchain(realtest26,m=i,k=20),realtest28,realtest34,subchain(realtest24,m=i,k=20),m=i)
  cummean(realtest28,realtest34,m=i)
  cummean(realtest14,realtest15,m=i)
}
##

## 5. GEI TA KAN (grp hao? m=1)
for (i in 1:14){
  grplot14(realtest28,realtest34,m=i)
  grplot14(realtest16,realtest17,m=i)
}
## 


## MEI LE
min(ess(realtest28))
library(lattice)
splom(realtest28)
rt=realtest28[,1:14]
rts=rt[seq(1,2800,by=10),]
splom(rts,pch=".")
cor(rts)

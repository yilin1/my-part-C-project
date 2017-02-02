psdata=pseudodata_real(i1=0.2, i2=0.2, i3=0.3, i4=0.4, i5=0.4,c1=0.9, c2=0.8,c3=0.7,c4=0.6, c5=0.6, c6=0.4, c7=0.3, c8=0.2,sf=0.1) #sf=0.1 by default
plot(psdata$Month,psdata$predictedratio)
erv2=rep(0,14)

erv2[1]=0.2
erv2[2]=0.24
erv2[3]=0.21
erv2[4]=0.2
erv2[5]=0.21
erv2[6]=0.2
erv2[7]=0.15
erv2[8]=0.12
erv2[9]=0.12
erv2[10]=0.12
erv2[11]=0.18
erv2[12]=0.15
erv2[13]=0.04
erv2[14]=0.03

realtest1=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=10,n=3000,erv1=erv1,erv2=erv2,tby=1)
realtest2=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=10,n=6000,erv1=erv1,erv2=erv2,tby=1)
realtest3=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=10,n=9000,erv1=erv1,erv2=erv2,tby=1)
realtest4=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=10,n=12000,erv1=erv1,erv2=erv2,tby=1)
realtest5=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=10,n=12000,erv1=erv1,erv2=erv2,tby=1)
realtest6=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=10,n=20000,erv1=erv1,erv2=erv2,tby=1)
realtest7=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=30,n=30000,erv1=erv1,erv2=erv2,tby=1)
realtest8=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=30,n=40000,erv1=erv1,erv2=erv2,tby=1)
realtest9=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=30,n=40000,erv1=erv1,erv2=erv2,tby=1)
realtest10=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=50,n=100000,erv1=erv1,erv2=erv2,tby=1)
realtest11=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=50,n=100000,erv1=erv1,erv2=erv2,tby=1)
realtest12=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=50,n=150000,erv1=erv1,erv2=erv2,tby=1)
realtest13=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=50,n=150000,erv1=erv1,erv2=erv2,tby=1)
realtest14=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=50,n=200000,erv1=1,erv2=erv2,tby=1)
realtest15=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=50,n=200000,erv1=1,erv2=erv2,tby=1)
#16,17 in WIN34
#18,19 in WIN35
#20,21 in WIN43
realtest24=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=50,n=2600000,erv1=1,erv2=erv2,tby=1)
realtest25=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=50,n=2600000,erv1=1,erv2=erv2,tby=1)

# from here on a0:
realtest26=myMCMC14a_vtest_evk_realtestyesfuben(data=psdata,v=1:14,k=50,n=2800000,erv1=1,erv2=erv2,tby=1)
realtest27=myMCMC14a_vtest_evk_realtestyesfuben(data=psdata,v=1:14,k=50,n=2800000,erv1=1,erv2=erv2,tby=1)

realtest28=myMCMC14a_vtest_evk_realtestyesfuben(data=psdata,v=1:14,k=1000,n=2800000,erv1=1,erv2=erv2,tby=1)
realtest29=myMCMC14a_vtest_evk_realtestyesfuben(data=psdata,v=1:14,k=1000,n=2800000,erv1=1,erv2=erv2,tby=1)

realtest30=myMCMC14a_vtest_evk_realtestyesfuben(data=psdata,v=1:14,k=1000,n=3000000,erv1=1,erv2=erv2,tby=1)
realtest31=myMCMC14a_vtest_evk_realtestyesfuben(data=psdata,v=1:14,k=1000,n=3000000,erv1=1,erv2=erv2,tby=1)

realtest32=myMCMC14a_vtest_evk_realtestyesfuben(data=psdata,v=1:14,k=1000,n=2800000,erv1=1,erv2=erv2,tby=1)
realtest33=myMCMC14a_vtest_evk_realtestyesfuben(data=psdata,v=1:14,k=1000,n=2800000,erv1=1,erv2=erv2,tby=1)
realtest34=myMCMC14a_vtest_evk_realtestyesfuben(data=psdata,v=1:14,k=1000,n=2800000,erv1=1,erv2=erv2,tby=1)
realtest35=myMCMC14a_vtest_evk_realtestyesfuben(data=psdata,v=1:14,k=1000,n=2800000,erv1=1,erv2=erv2,tby=1)

realtest36=myMCMC14a_vtest_evk_realtestyesfuben(data=psdata,v=1:14,k=1000,n=2800000,erv1=1,erv2=erv2,tby=1)

realtest37=myMCMC14a_vtest_evk_realtestyesfuben(data=psdata,v=1:14,k=1000,n=2800000,erv1=1,erv2=erv2,tby=1)

sink()
sink("realtest37(280)sink")
print(erv2)
# accident to quit realtest25. restart
sink("realtest25(260,k=2000)sink")
print(erv2)
realtest25=myMCMC14a_vtest_evk_realtestyes(data=psdata,v=1:14,k=2000,n=2600000,erv1=1,erv2=erv2,tby=1)
sink()

for (i in 1:14){
  par(mfrow=c(2,1))
  histocp(realtest24,realtest25,last=100,m=i) #TODAY'S 2
  #histocp(realtest14,realtest15,last=100,m=i) # PREVIOUS' 2
}
sighist14_lines(realtest14,m=10,last=10)

indivacf14_real(mc=realtest14)
for (i in 1:14){
  #par(mfrow=c(1,2))
  acf(realtest14[,i])
  #acf(realtest17[,i])
}

qtfitplot14_real(data=psdata,mc=realtest24,last=200,spsize=50,predict=TRUE)

for (i in 1:14){
  traceplot14(mc=realtest14,m=i,last=500)
  #lines(realtest15[,i],col=2)
}
traceplot14(mc=realtest14,m=4,last=500)


indivtracplot14(mc=realtest24,last=300)
graphics.off()

for (i in 1:14){
  quartz()
  cummean(realtest10,realtest9,realtest8,realtest6,m=i)
}
for (i in 1:14){
  #quartz()
  cummean(realtest24,m=i)
}
for (i in 1:14){
  #quartz()
  cummean(realtest14,realtest15,m=i)
}
for (i in 1:14){
  #quartz()
  cummean(realtest14,m=i)
}

graphics.off()

tail(mrealp2)
lkplot14real(data=p2,m=2,parvec=a1)
plot(realtest4[,14]) 

for (i in 1:14){
  grplot14(realtest16,realtest17,m=i)
}

subc2412=subchain(mc=realtest14,k=10,m=12)
subc2411=subchain(mc=realtest24,k=5,m=11)
subc1409=subchain(mc=realtest14,k=1,m=9)
subc2407=subchain(mc=realtest24,k=20,m=7)

subl24=sublattice(realtest24)
for (i in 1:14){
  #par(mfrow=c(1,2))
  acf(subc1409)
  #acf(realtest17[,i])
}

for (i in 1:14){
  #traceplot14(mc=realtest14,m=i,last=500)
  #plot(realtest14[,i],col=2)
  plot(subc1409,type='l')
  plot(subc2412,type="l")
}
typeof(subc2412)
library(mcmcse)
minESS(p=14)
multiESS(realtest24)
ess(subc2412) # conservative choose the smallest one...
multiESS(subc2412)



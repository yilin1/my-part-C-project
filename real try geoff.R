psdata=pseudodata_real(i1=0.2, i2=0.2, i3=0.3, i4=0.4, i5=0.4,c1=0.9, c2=0.8,c3=0.7,c4=0.6, c5=0.6, c6=0.4, c7=0.3, c8=0.2,sf=0.1) #sf=0.1 by default
plot(psdata$Month,psdata$predictedratio)
erv2=rep(0,14)
erv2[1]=0.2
erv2[2]=0.21
erv2[3]=0.21
erv2[4]=0.2
erv2[5]=0.21
erv2[6]=0.2
erv2[7]=0.15
erv2[8]=0.12
erv2[9]=0.15
erv2[10]=0.12
erv2[11]=0.15
erv2[12]=0.11
erv2[13]=0.06
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

sink()
sink("realtest1415(20)")
print(erv2)


par(mfrow=c(3,5))
histocp(realtest12,realtest13,last=3000,m=12)
sighist14_lines(realtest13,m=7,last=1000)
indivacf14_real(mc=realtest9)

acf(realtest13[,11])

qtfitplot14_real(data=psdata,mc=realtest12,last=200,spsize=50,predict=TRUE)

traceplot14(mc=realtest8,m=11,last=500)
lines(realtest7[,11],col=2)
indivtracplot14(mc=realtest12,last=300)

for (i in 1:14){
  quartz()
  cummean(realtest10,realtest9,realtest8,realtest6,m=i)
}
for (i in 5:8){
  quartz()
  cummean(realtest9,m=i)
}
for (i in 1:14){
  quartz()
  cummean(realtest12,realtest13,m=i)
}
for (i in 13:14){
  quartz()
  cummean(realtest9,m=i)
}

graphics.off()
tail(mrealp2)
lkplot14real(data=p2,m=2,parvec=a1)
plot(realtest4[,14]) 

grplot14(realtest10,realtest11,m=1)


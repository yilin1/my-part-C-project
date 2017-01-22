erv2=rep(0.01,14)
#erv2[14]=0
erv2[1]=0.05
erv2[2]=0.01
erv2[3]=0.01
erv2[4]=0.05
erv2[5]=0.05
erv2[6]=0.05
erv2[7]=0.05
erv2[8]=0.01
erv2[9]=0.1
erv2[10]=0.1
erv2[11]=0.05
erv2[12]=0.05
erv2[13]=0.06
erv2[14]=0.01

plot(pseudodata_real()$Month,pseudodata_real()$predictedratio)
plot(pseudodata(i1=0.2, i2=0.2, i3=0.3, i4=0.4, i5=0.4,c1=0.9, c2=0.8,c3=0.7,c4=0.6, c5=0.6, c6=0.4, c7=0.3, c8=0.2))
psdata=pseudodata_real(i1=0.2, i2=0.2, i3=0.3, i4=0.4, i5=0.4,c1=0.9, c2=0.8,c3=0.7,c4=0.6, c5=0.6, c6=0.4, c7=0.3, c8=0.2,sf=0.1) #sf=0.1 by default

plot(psdata$Month,psdata$predictedratio)

realtest1=myMCMC14a_vtest_evk_realtest(data=psdata,v=1:13,k=10,n=3000,erv1=erv1,erv2=erv2,tby=1)
realtest2=myMCMC14a_vtest_evk_realtest(data=psdata,v=1:14,k=10,n=6000,erv1=erv1,erv2=erv2,tby=1)
realtest4=myMCMC14a_vtest_evk_realtest(data=psdata,v=6:9,k=10,n=8000,erv1=erv1,erv2=erv2,tby=1)


indivacf14_real(mc=realtest2)
indivtracplot14(mc=realtest4,last=300)
sighist14(realtest1,m=,last=500)
plot(realtest4[,14])
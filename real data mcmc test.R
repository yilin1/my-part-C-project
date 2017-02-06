p1=whichdata(1) #relapse
plotdata(p1,1)
mc11=myMCMC14a_vtest_evk_realtestyesfuben(data=p1,v=1:14,n=3000,k=10,erv2=erv2_24)
mc12=myMCMC14lognorm(data=p1,v=1:14,a0=rep(0.5,14),k=10,erv1=1,erv2=erv2_24,tby=1,n=3000)

qtfitplot14_real(data=p1,mc=mc12,last=100,spsize=50,predict=FALSE)

#data,v,a0=rep(0.5,14),k=10,erv1=1,erv2=erv2_24,tby=1,n=3000

p2=whichdata(2) #remission
plotdata(p2,2)
mc21=myMCMC14a_vtest_evk_realtestyesfuben(data=p2,v=1:14,n=3000,k=20,erv2=erv2_24)
mc22=myMCMC14lognorm(data=p2,v=1:14,a0=rep(0.5,14),k=20,erv1=1,erv2=erv2_24,tby=1,n=10000)
qtfitplot14_real(data=p2,mc=mc21,last=100,spsize=50,predict=FALSE)

p3=whichdata(3) #remission
plot(p3$Month,p3$ratio,main='patient 3',xlab='Month',ylab='BCR-ABL ratio',ylim=c(0,1))
mc32=myMCMC14lognorm(data=p3,v=1:14,a0=rep(0.5,14),k=10,erv1=1,erv2=erv2_24,tby=1,n=1000)
qtfitplot14_real(data=p3,mc=mc32,last=100,spsize=50,predict=FALSE)

mc31=myMCMC14a_vtest_evk_realtestyesfuben(data=p3,v=1:14,n=10000,k=20,erv2=erv2_24)
qtfitplot14_real(data=p3,mc=mc31,last=200,spsize=50,predict=FALSE)
tail(mc31)

p4=whichdata(4) #remission
plotdata(p4,4)
mc41=myMCMC14a_vtest_evk_realtestyesfuben(data=p4,v=1:14,n=10000,k=20,erv2=erv2_24)
qtfitplot14_real(data=p4,mc=mc41,last=200,spsize=50,predict=FALSE)
tail(mc41)

p5=whichdata(5) #remission
plotdata(p5,5)
mc51=myMCMC14a_vtest_evk_realtestyesfuben(data=p5,v=1:14,n=20000,k=20,erv2=erv2_24)
mc52=myMCMC14lognorm(data=p5,v=1:14,a0=rep(0.5,14),k=20,erv1=1,erv2=erv2_24,tby=1,n=20000)
mc53=myMCMC14lognorm(data=p5,v=1:14,a0=rep(0.5,14),k=50,erv1=1,erv2=erv2_24,tby=1,n=50000)

qtfitplot14_real(data=p5,mc=mc51,last=200,spsize=50,predict=FALSE)

p6=whichdata(6) #remission
plotdata(p6,6)
mc61=myMCMC14a_vtest_evk_realtestyesfuben(data=p6,v=1:14,n=20000,k=20,erv2=erv2_24)
mc52=myMCMC14lognorm(data=p5,v=1:14,a0=rep(0.5,14),k=20,erv1=1,erv2=erv2_24,tby=1,n=20000)
mc53=myMCMC14lognorm(data=p5,v=1:14,a0=rep(0.5,14),k=50,erv1=1,erv2=erv2_24,tby=1,n=50000)
qtfitplot14_real(data=p6,mc=mc61,last=200,spsize=50,predict=FALSE)


#use the average of 69: (remission fit)
a0=rep(0.5,14)
a0[14]=var(mm$ratio)
mcmm=myMCMC14lognorm(data=mm,v=1:14,a0=a0,k=50,erv1=1,erv2=erv2_24,tby=1,n=10000)
remissionfit=myMCMC14a_vtest_evk_realtestyesfuben(data=mm,v=1:14,a0=a0,n=2000000,k=20,erv2=erv2_24)
qtfitplot14_real(data=mm,mc=remissionfit,last=200,spsize=50,predict=FALSE)
plot(density(remissionfit[,9])) 


sink(file="relapsefit1(200,k=1000)")
print(paste("erv2="))
print(erv2_24)
remissionfit1=myMCMC14a_vtest_evk_realtestyesfuben(data=mm,v=1:14,a0=a0,n=2000000,k=1000,erv2=erv2_24)
sink()












for (i in 6:13){
  sighist14_lines(remissionfit,m=i,last=500)
}

# pick a random relapse (relapse fit) (it seems that 7 has the most data)
rd=dragdata(home=FALSE)
unique(rd[which(rd$outcome=="relapse"),]$Patient.No)
p7=whichdata(7,home=FALSE)
p7
relap7fit=myMCMC14a_vtest_evk_realtestyesfuben(data=p7,v=1:14,n=30000,k=20,erv2=erv2_24)
qtfitplot14_real(data=p7,mc=relap7fit,last=200,spsize=50,predict=FALSE)
plot(density(relap7fit[,9])) 
for (i in 6:13){
  sighist14_lines(relap7fit,m=i,last=500)
}

sink(file="relap7fit1(200,k=1000)")
print(paste("erv2="))
print(erv2_24)
a0=rep(0.5,14)
a0[14]=var(p7$ratio)
print(paste("a0="))
print(a0)
relap7fit1=myMCMC14a_vtest_evk_realtestyesfuben(data=p7,a0=a0,v=1:14,n=2000000,k=1000,erv2=erv2_24)
sink()






## Xia Mian Bu Shi Le
for (i in 1:14){
  sighist14_lines(mc=mc51,m=i,last=200)
}

for (i in 69:1){
  pi=whichdata(i)
  plotdata(pi,i)
  #p=cbind(p,pi)
}
graphics.off()

p11=whichdata(11)
plotdata(p11,11)

p14=whichdata(14)
plotdata(p14,14)

p18=whichdata(18)
plotdata(p18,18)

p20=whichdata(20)
plotdata(p20,20)

p31=whichdata(31)
plotdata(p31,31)

p37=whichdata(37)
plotdata(p37,37)

p43=whichdata(43)
plotdata(p43,43)

p46=whichdata(46)
plotdata(p46,46)

p66=whichdata(66)
plotdata(p66,66)

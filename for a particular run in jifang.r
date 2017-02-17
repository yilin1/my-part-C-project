install.packages("repmis")
library(repmis)#
install.packages("curl")
library(curl)
install.packages("data.table")
library(data.table)
install.packages("digest")
library(digest)
source_data("https://github.com/yilin1/my-part-C-project/blob/0208/realtest's/remissionfit1(200%2Ck%3D1000)fuben.RData?raw=TRUE")
source_data("https://github.com/yilin1/my-part-C-project/blob/0217/work%20images/coreimage0217.RData?raw=TRUE")
erv2_remissionfit2=erv2_24
erv2_remissionfit2[2]=0.22
erv2_remissionfit2[3]=0.1
erv2_remissionfit2[4]=0.18
erv2_remissionfit2[5]=0.18
erv2_remissionfit2[6]=0.22
erv2_remissionfit2[8]=0.15
erv2_remissionfit2[12]=0.10
erv2_remissionfit2[13]=0.08
erv2_remissionfit2[14]=0.01

a0=rep(0.5,14)
a0[14]=var(mm$ratio)

sink(file="remissionfit2sink(260,k=1000)fuben")
print(paste("erv2="))
print(erv2_remissionfit2)
print(paste("a0="))
print(a0)
remissionfit2=myMCMC14a_vtest_evk_realtestyesfuben(data=mm,v=1:14,a0=a0,n=2650000,k=2000,erv2=erv2_remissionfit2)
sink()

#42 0209 remis8mc1
p8=whichdata(8,home=FALSE)
a0=rep(0.5,14)
a0[14]=var(p8$ratio)
sink(file="remis8mc1sink(560,2000)fuben.RData")
print(paste("erv2="))
print(erv2_remissionfit2)
print(paste("a0="))
print(a0)
remis8mc1=myMCMC14a_vtest_evk_realtestyesfuben(data=p8,v=1:14,a0=a0,n=5600000,k=2000,erv2=erv2_remissionfit2)
sink()

#43 0209 remis8mc2
p8=whichdata(8,home=FALSE)
a0=rep(0.5,14)
a0[14]=var(p8$ratio)
sink(file="remis8mc2sink(560,2000)fuben.RData")
print(paste("erv2="))
print(erv2_remissionfit2)
print(paste("a0="))
print(a0)
remis8mc2=myMCMC14a_vtest_evk_realtestyesfuben(data=p8,v=1:14,a0=a0,n=5600000,k=2000,erv2=erv2_remissionfit2)
sink()

#49 0209 relap7mc1
p7=whichdata(7,home=FALSE)
dim(p7)
a0=rep(0.5,14)
a0[14]=var(p7$ratio)
erv2_relap7mc1=erv2_24
erv2_relap7mc1[14]=0.01
sink(file="relap7mc1sink(560,k=2000)fuben")
print(paste("erv2="))
print(erv2_relap7mc1)
print(paste("a0="))
print(a0)
relap7mc1=myMCMC14a_vtest_evk_realtestyesfuben(data=p7,v=1:14,a0=a0,n=5600000,k=2000,erv2=erv2_relap7mc1)
sink()

#44 0209 relap7mc1
p7=whichdata(7,home=FALSE)
dim(p7)
plotdata(p7,patientnum=7)
a0=rep(0.5,14)
a0[14]=var(p7$ratio)
erv2_relap7mc1=erv2_24
erv2_relap7mc1[14]=0.01
sink(file="relap7mc2sink(560,k=2000)fuben")
print(paste("erv2="))
print(erv2_relap7mc1)
print(paste("a0="))
print(a0)
relap7mc2=myMCMC14a_vtest_evk_realtestyesfuben(data=p7,v=1:14,a0=a0,n=5600000,k=2000,erv2=erv2_relap7mc1)
sink()

#37 0209 indep for remissionfit1 b3
source_data("https://github.com/yilin1/my-part-C-project/blob/0209/realtest's/remissionfit1(200%2Ck%3D1000)fuben.RData?raw=TRUE")
p8=whichdata(8,home=FALSE)
plotdata(p8,8)
a0=rep(0.5,14)
a0[14]=var(p8$ratio)
sink(file="b3_for remissionfit1(200wan,1000)(b3 is n=60000, k=3,evk=100)")
b3=indepMCMC(data=p8,mc=remissionfit1,k=3,a0=a0,evk=100,n=60000,d=14)
sink()

#37 0210 indep for remissionfit1 b5
sink(file="b5_for remissionfit1(200wan,1000)(b3 is n=200000, k=3,evk=100)")
b5=indepMCMC(data=p8,mc=remissionfit1,k=3,a0=a0,evk=100,n=200000,d=14)
sink()



#48 0209 indep for remissionfit1  b4
source_data("https://github.com/yilin1/my-part-C-project/blob/0209/realtest's/remissionfit1(200%2Ck%3D1000)fuben.RData?raw=TRUE")
p8=whichdata(8,home=FALSE)
plotdata(p8,8)
a0=rep(0.5,14)
a0[14]=var(p8$ratio)
sink(file="b4_for remissionfit1(200wan,1000)(b4 is n=60000, k=3,evk=100)")
b4=indepMCMC(data=p8,mc=remissionfit1,k=3,a0=a0,evk=100,n=60000,d=14)
sink()
a0_b4=a0
save(b4,remissionfit1,p8,a0_b4,file="b4_indepMCMC for remissionfit1(60000,100).RData")

#48 0210 remis8mc560w1
p8=whichdata(8,home=FALSE)
a0=rep(0.5,14)
a0[14]=var(p8$ratio)
sink(file="remis8mc560w1sink(560w,2000)fuben.RData")
print(paste("erv2="))
print(erv2_remissionfit2)
print(paste("a0="))
print(a0)
remis8mc560w1=myMCMC14a_vtest_evk_realtestyesfuben(data=p8,v=1:14,a0=a0,n=5600000,k=2000,erv2=erv2_remissionfit2)
sink()

#09 0210 indep for remissionfit1  b6 (Meile)
source_data("https://github.com/yilin1/my-part-C-project/blob/0209/realtest's/remissionfit1(200%2Ck%3D1000)fuben.RData?raw=TRUE")
p8=whichdata(8,home=FALSE)
plotdata(p8,8)
a0=rep(0.5,14)
a0[14]=var(p8$ratio)
sink(file="b6_for remissionfit1(200wan,1000)(b6 is n=200000, k=3,evk=100)")
b6=indepMCMC(data=p8,mc=remissionfit1,k=3,a0=a0,evk=100,n=200000,d=14)
sink()
a0_b6=a0
save(b6,remissionfit1,p8,a0_b6,file="b4_indepMCMC for remissionfit1(200000,100).RData")

#01 0210 remis8fit260w1
p8=whichdata(8,home=FALSE)
plotdata(p8,8)
a0=rep(0.5,14)
a0[14]=var(p8$ratio)
sink(file="remis8fit260w1sink(260w,1000)fuben.RData")
print(paste("erv2="))
print(erv2_remissionfit2)
print(paste("a0="))
print(a0)
remis8fit260w1=myMCMC14a_vtest_evk_realtestyesfuben(data=p8,v=1:14,a0=a0,n=2600000,k=1000,erv2=erv2_remissionfit2)
sink()

#37 0211 remis8fit270w1
p8=whichdata(8,home=FALSE)
plotdata(p8,8)
a0=rep(0.5,14)
a0[14]=var(p8$ratio)
sink(file="remis8fit270w1sink(270w,1000)fuben.RData")
print(paste("erv2="))
print(erv2_remissionfit2)
print(paste("a0="))
print(a0)
remis8fit270w1=myMCMC14a_vtest_evk_realtestyesfuben(data=p8,v=1:14,a0=a0,n=2700000,k=1000,erv2=erv2_remissionfit2)
sink()


#39 #0212 indep samp1 on relap7fit2
p7=whichdata(7,home=FALSE)
plotdata(p7,7)
a0=rep(0.5,14)
a0[14]=var(p7$ratio)
qtfitplot14_real(data=p7,mc=relap7fit2)
sink(file="irelap1_relap7fit2(260w,1000)(irelap1 is n=400000, k=3,evk=100)")
irelap1=indepMCMC(data=p7,mc=relap7fit2,k=3,a0=a0,evk=100,n=400000,d=14)
sink()
a0_irelap1=a0
save(irelap1,relap7fit2,p7,a0irelap1,file="irelap1_for relap7fit2(260w,1000)(irelap1 is n=400000, k=3,evk=100).RData")

#36 #0212 indep samp2 on relap7fit2
source_data("https://github.com/yilin1/my-part-C-project/blob/0212/realtest's/relap7fit2(260w%2C1000)fuben.RData?raw=TRUE")
p7=whichdata(7,home=FALSE)
plotdata(p7,7)
a0=rep(0.5,14)
a0[14]=var(p7$ratio)
qtfitplot14_real(data=p7,mc=relap7fit2)
sink(file="irelap2_relap7fit2(260w,1000)(irelap1 is n=400000, k=3,evk=100)")
irelap2=indepMCMC(data=p7,mc=relap7fit2,k=3,a0=a0,evk=100,n=400000,d=14)
sink()
a0_irelap1=a0
save(irelap1,relap7fit2,p7,a0irelap1,file="irelap1_for relap7fit2(260w,1000)(irelap1 is n=400000, k=3,evk=100).RData")

#09 0212 remis8fit280w1
p8=whichdata(8,home=FALSE)
plotdata(p8,8)
a0=rep(0.5,14)
a0[14]=var(p8$ratio)
sink(file="remis8fit280w1sink(280w,1000)fuben.RData")
print(paste("erv2="))
print(erv2_remissionfit2)
print(paste("a0="))
print(a0)
remis8fit280w1=myMCMC14a_vtest_evk_realtestyesfuben(data=p8,v=1:14,a0=a0,n=2800000,k=1000,erv2=erv2_remissionfit2)
sink()
a0_remis8fit280w1=a0
save(remis8fit280w1,a0_remis8fit280w1,p8,file="remis8fit280w1.RData")

#48 0216 relap7fit280w1 (erv2 gaile, as acp rate too low)
erv2_relap7fit280w1=rep(0.01,14)
erv2_relap7fit280w1[1]=0.1
erv2_relap7fit280w1[2]=0.1
erv2_relap7fit280w1[3]=0.15
erv2_relap7fit280w1[4]=0.1
erv2_relap7fit280w1[5]=0.1
erv2_relap7fit280w1[6]=0.1
erv2_relap7fit280w1[7]=0.1
erv2_relap7fit280w1[8]=0.1
erv2_relap7fit280w1[9]=0.07
erv2_relap7fit280w1[10]=0.07
erv2_relap7fit280w1[11]=0.1
erv2_relap7fit280w1[12]=0.02
erv2_relap7fit280w1[13]=0.02

p7=whichdata(7,home=FALSE)
dim(p7)
plotdata(p7,patientnum=7)
a0=rep(0.5,14)
a0[14]=var(p7$ratio)
sink(file="relap7fit280w1sink(280,k=1000)fuben")
print(paste("erv2="))
print(erv2_relap7fit280w1)
print(paste("a0="))
print(a0)
relap7fit280w1=myMCMC14a_vtest_evk_realtestyesfuben(data=p7,v=1:14,a0=a0,n=2800000,k=1000,erv2=erv2_relap7fit280w1)
sink()

#37 0216 relap7fit280w2 (erv2 gaile, as acp rate too low)
erv2_relap7fit280w2=rep(0.01,14)
erv2_relap7fit280w2[1]=0.1
erv2_relap7fit280w2[2]=0.1
erv2_relap7fit280w2[3]=0.15
erv2_relap7fit280w2[4]=0.1
erv2_relap7fit280w2[5]=0.1
erv2_relap7fit280w2[6]=0.1
erv2_relap7fit280w2[7]=0.1
erv2_relap7fit280w2[8]=0.1
erv2_relap7fit280w2[9]=0.07
erv2_relap7fit280w2[10]=0.07
erv2_relap7fit280w2[11]=0.1
erv2_relap7fit280w2[12]=0.02
erv2_relap7fit280w2[13]=0.02
p7=whichdata(7,home=FALSE)
dim(p7)
plotdata(p7,patientnum=7)
a0=rep(0.5,14)
a0[14]=var(p7$ratio)
sink(file="relap7fit280w2sink(280,k=1000)fuben")
print(paste("erv2="))
print(erv2_relap7fit280w2)
print(paste("a0="))
print(a0)
relap7fit280w1=myMCMC14a_vtest_evk_realtestyesfuben(data=p7,v=1:14,a0=a0,n=2800000,k=1000,erv2=erv2_relap7fit280w2)
sink()

#using p25 in stats lib windows 0217
p25=whichdata(25,home=FALSE)
p26=whichdata(26,home=FALSE)

plot(p25$Month,p25$ratio,ylim=c(0,1))
plot(p26$Month,p26$ratio,ylim=c(0,1))
var(p25$ratio) #0.06
var(p26$ratio) #0.00917
#chosen p25, as larger variance...?
plotdata(p26,26)
a0=rep(0.5,14)
a0[14]=var(p25$ratio)
erv2_relap25fit280w1=rep(0.01,14)
erv2_relap25fit280w1[1]=0.1
erv2_relap25fit280w1[2]=0.1
erv2_relap25fit280w1[3]=0.15
erv2_relap25fit280w1[4]=0.1
erv2_relap25fit280w1[5]=0.1
erv2_relap25fit280w1[6]=0.1
erv2_relap25fit280w1[7]=0.1
erv2_relap25fit280w1[8]=0.1
erv2_relap25fit280w1[9]=0.07
erv2_relap25fit280w1[10]=0.07
erv2_relap25fit280w1[11]=0.1
erv2_relap25fit280w1[12]=0.02
erv2_relap25fit280w1[13]=0.02
sink(file="relap25fit10w1sink(26w,k=1000)fuben")
print(paste("erv2="))
print(erv2_relap25fit280w1)
print(paste("a0="))
print(a0)
relap7fit26w1=myMCMC14a_vtest_evk_realtestyesfuben(data=p25,v=1:14,a0=a0,n=260000,k=1000,erv2=erv2_relap25fit280w1)
sink()


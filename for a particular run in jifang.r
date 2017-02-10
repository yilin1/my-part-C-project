install.packages("repmis")
library(repmis)#
install.packages("curl")
library(curl)
install.packages("data.table")
library(data.table)
install.packages("digest")
library(digest)
source_data("https://github.com/yilin1/my-part-C-project/blob/0208/realtest's/remissionfit1(200%2Ck%3D1000)fuben.RData?raw=TRUE")
source_data("https://github.com/yilin1/my-part-C-project/blob/0209/work%20images/coreimage0209.RData?raw=TRUE")
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
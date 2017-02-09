library(repmis)#
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

rd=dragdata(home=FALSE)
dim(rd)
p7=whichdata(7,home=FALSE)
dim(p7)
a0=rep(0.5,14)
a0[14]=var(p7$ratio)
erv2_relap7fit2=erv2_24
erv2_relap7fit2[14]=0.01
sink(file="relap7fit2sink(260,k=1000)fuben")
print(paste("erv2="))
print(erv2_relap7fit2)
print(paste("a0="))
print(a0)
relap7fit2=myMCMC14a_vtest_evk_realtestyesfuben(data=p7,v=1:14,a0=a0,n=5600000,k=2000,erv2=erv2_remissionfit2)
sink()

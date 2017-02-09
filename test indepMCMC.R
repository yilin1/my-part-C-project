a0=rep(0.5,14)
a0[14]=var(mm$ratio)
library(repmis)
source_data("https://github.com/yilin1/my-part-C-project/blob/0208/realtest's/remissionfit1(200%2Ck%3D1000)fuben.RData?raw=TRUE")
a=indepMCMC(data=mm,mc=remissionfit,k=3,a0=a0,evk=10,n=6000,d=14)
a2=indepMCMC(data=mm,mc=remissionfit,k=3,a0=a0,evk=10,n=6000,d=14)

sink(file="b1_for remissionfit1(200wan,1000)(b1 is n=6000, evk=10)")
b1=indepMCMC(data=mm,mc=remissionfit1,k=3,a0=a0,evk=10,n=6000,d=14)
sink()
save(b1,mm,remissionfit1,a0,file="b1_indep for remissionfit1(200wan,1000)(n=6000,evk=10).RData")

sink(file="b2_for remissionfit1(200wan,1000)(b1 is n=6000, evk=10)")
b2=indepMCMC(data=mm,mc=remissionfit1,k=3,a0=a0,evk=10,n=6000,d=14)
sink()
save(b2,mm,remissionfit1,a0,file="b2_indep for remissionfit1(200wan,1000)(n=6000,evk=10).RData")

#10 bei length
sink(file="b3_for remissionfit1(200wan,1000)(b3 is n=60000, k=4,evk=100)")
b3=indepMCMC(data=mm,mc=remissionfit1,k=4,a0=a0,evk=100,n=60000,d=14)
sink()
save(b3,mm,remissionfit1,a0,file="b3_indep for remissionfit1(200wan,1000)(n=60000,k=4,evk=100).RData")

sink(file="b4_for remissionfit1(200wan,1000)(b4 is n=60000, k=4,evk=100)")
b4=indepMCMC(data=mm,mc=remissionfit1,k=4,a0=a0,evk=100,n=60000,d=14)
sink()
save(b4,mm,remissionfit1,a0,file="b4_indep for remissionfit1(200wan,1000)(n=60000,k=4,evk=100).RData")


save(a,file="indep for remissionfit (6000,evk=10).RData")
save(a2,file="a2_for remissionfit(n=6000,evk=10).RData")

cummean(a[,1])
dim(a)
for (i in 1:14){
acf(subchain(b1,m=i,5))
} # q: why is it still so high a correlation? #acceptance rate very low..
graphics.off()
cbind(tail(a),tail(a2))
qtfitplot14_real(data=mm,mc=remissionfit)
library(mcmcse)
minESS(p=14)
ess(b1)
multiESS()
for (i in 1:14){
  #par(mfrow=c(2,1))
  histocp(a,a2,m=i,last=100) 
  #histocp(realtest13,realtest14,realtest15,last=100,m=i) 
}
for (i in 1:14){
  traceplot14(mc=a,m=i,last=500)
  lines(a2[,i],col=2)
  #lines(subchain(realtest26,m=i,k=20),col=3)
}

r2=sublattice(m=remissionfit,kvec=rep(10,14))
for (i in 1:14){
  #cummean(subchain(realtest26,m=i,k=20),realtest28,realtest34,subchain(realtest24,m=i,k=20),m=i)
  cummean(b1,b2,m=i)
  #cummean(realtest14,realtest15,m=i)
}
dim(r2)

for (i in 1:14){
  grplot14(b1,b2,m=i)
  #grplot14(realtest16,realtest17,m=i)
}

for (i in 1:14){
  histbins(a2,a,m=i)
}


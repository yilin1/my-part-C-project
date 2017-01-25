a2=a1[6:13]
a2
dt<-ode(y=yini,func=pol,times=seq(0,t,by=tby),parms=a2) 
deterministic$V1-gt1
deterministic=as.data.frame(deterministic)
colnames(deterministic)[1]='ratio'
colnames(deterministic)[2]='Month'
deterministic

ratiomonth[which(ratiomonth$Month==tmpts),]$ratios
gt1[which(gt1$Month==tmpts),]$predictedratio
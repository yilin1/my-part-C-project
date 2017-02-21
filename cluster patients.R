rd=dragdata(home=FALSE)
rd=dragdata()
remisp=unique(rd[which(rd$outcome=="remission"),]$Patient.No)
length(remisp)
mode(remisp)
remisdata=rd[which(rd$outcome=="remission"),]
remisdata

relapsp=unique(rd[which(rd$outcome=="relapse"),]$Patient.No)
relapsp
relapsdata=rd[which(rd$outcome=="relapse"),]
relapsdata
for (i in relapsp){
  pi=whichdata(i,home=TRUE)
  plotdata(data=pi,patientnum = i)
}
print("relapse")
for (i in relapsp){
  pi=whichdata(i,home=FALSE)
  print(i)
  print(pi$ratio)
}
cannotc=unique(rd[which(rd$outcome=="cannotclassify"),]$Patient.No)
cannotc
for (i in cannotc){
  pi=whichdata(i,home=TRUE)
  plotdata(data=pi,patientnum = i)
}
print("cannot classify")
for (i in cannotc){
  pi=whichdata(i,home=FALSE)
  print(i)
  print(pi$ratio)
}

# find out whose data has ratios >1
morethan1=rd[unique(which(rd$ratio>1)),]$Patient.No
for (i in morethan1){
  pi=whichdata(i,home=FALSE)
  print(i)
  print(pi$ratio)
}
for (i in morethan1){
  pi=whichdata(i,home=FALSE)
  plotdata(data=pi,patientnum = i)
}


plotdata(all=TRUE)
kmeans
?kmeans

maxMonth=max(rd$Month)
minMonth=min(rd$Mon)
dim(rd)
months=minMonth:maxMonth
howmany=c()
for (month in minMonth:maxMonth){
  numpatient=length(rd[which(rd$Month==month),]$Patient.No)
  howmany=rbind(howmany,numpatient)
}
c=cbind(months,howmany)
names(as.data.frame(c))
d=as.data.frame((c))
morethan20=d[which(d$V2>=20),]$month

meanratio=c()
for (month in morethan20){
  meanratio=rbind(meanratio,mean(rd[which(rd$Month==month),]$ratio))
}
mm=as.data.frame(cbind(morethan20,meanratio))
names(mm)=c("Month","ratio") #names are to be consistent with 14d MCMC functions to be used.
plot(mm)
var(mm$ratio)

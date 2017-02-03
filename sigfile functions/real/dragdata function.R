dragdata=function(home=TRUE){
  if (home==TRUE){
setwd('/Users/yilinsmac/Desktop/dissert')
  } 
#install.packages("gdata")
require(gdata)
rd=read.xls("(Real Data) bcr-abl1-transcript-ratios_state2006.xls",header=TRUE,sheet=1,verbose=FALSE)
rd$X=NULL
rd$X.1=NULL
colnames(rd)[3]='ratio'
rd$ratio=as.numeric(as.vector(rd$ratio))
for (i in 1:dim(rd)[1]){
  row=rd[i,]
  if (is.na(row$ratio)==TRUE){
rd=rd[-i,]}}
rd$ratio=rd$ratio/100
outcome=rep("remission",889)
rd$outcome=outcome
rd[which(rd$Patient.No.==1),]$outcome="relapse"
rd[which(rd$Patient.No.==7),]$outcome="relapse"
rd[which(rd$Patient.No.==25),]$outcome="relapse"
rd[which(rd$Patient.No.==26),]$outcome="relapse"
rd[which(rd$Patient.No.==47),]$outcome="relapse"
rd[which(rd$Patient.No.==68),]$outcome="relapse"
#outcome[1]="relapse"
#outcome[7]="relapse"
#outcome[25]="relapse"
#outcome[26]="relapse"
#outcome[47]="relapse"
#outcome[68]="relapse"

rd[which(rd$Patient.No.==11),]$outcome="cannotclassify"
rd[which(rd$Patient.No.==31),]$outcome="cannotclassify"
rd[which(rd$Patient.No.==37),]$outcome="cannotclassify"
rd[which(rd$Patient.No.==46),]$outcome="cannotclassify"
rd[which(rd$Patient.No.==66),]$outcome="cannotclassify"
#outcome[11]="cannot classify"
#outcome[31]="cannot classify"
#outcome[37]="cannot classify"
#outcome[46]="cannot classify"
#outcome[66]="cannot classify"

rd$outcome=as.factor(rd$outcome)
if (home==True){
setwd('/Users/yilinsmac/Desktop')}


return(rd)
}
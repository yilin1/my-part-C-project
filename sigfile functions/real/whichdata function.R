
whichdata=function(num){
	#this function returns the data for the specific patient numbered 'num'
	#so num ranges from 1 to 69

setwd('/Users/yilinsmac/Desktop/dissert')
#install.packages("gdata")
require(gdata)
rd=read.xls("(Real Data) bcr-abl1-transcript-ratios_state2006.xls",header=TRUE,sheet=1,verbose=FALSE)
rd$X=NULL
rd$X.1=NULL
colnames(rd)[3]='ratio'
setwd('/Users/yilinsmac')
	
	which1=which(rd$Patient.No.==num)
	#which2=rd[which1,]
	#which3=as.numeric(as.vector(which2$ratio)) Q:how to deal with the starred datas?
	return(rd[which1,])
}
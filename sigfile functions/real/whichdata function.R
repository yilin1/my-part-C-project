
whichdata=function(num){
	#this function returns the data for the specific patient numbered 'num'
	#so num ranges from 1 to 69

  rd=dragdata()
	which1=which(rd$Patient.No.==num)
	#which2=rd[which1,]
	#which3=as.numeric(as.vector(which2$ratio)) Q:how to deal with the starred datas?
	return(rd[which1,])
}
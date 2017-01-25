plotrealdata=function(data){
	
	#scatter plot of the real data 'data',it should be the data of a single patient
	
	values=as.numeric(as.vector(data$ratio))
	getmax=max(values)
	plot(data$Month,values/100,ylim=c(0,1),main=paste('quantile predictions','(',dim(mc)[1],'iterations',')'),ylab='Transcript BCR-ABL levels',xlab='Months')

}
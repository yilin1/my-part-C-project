#source("/Users/yilinsmac/Desktop/sigfile functions/real/qtfitplot14_real function.r")
qtfitplot14_real=function(data,mc,last=1000,spsize=100,predict=TRUE,tby=1,erv1=1){
	#mc is the output of a 14d mcmc function, i.e. of dimension n*14, where n is the number of iteration in the MCMC, 
	#and most importantly, the MCMC function should act on data
	#last is the number to take from the end of the chain to sample from 
	# spsize is the sample size
	# erv1, and tby are passed on from pseudodata_real()etc. functions.
	# note that you might notice that there is no m argument, since we are plotting for all the parameter predictions.
	
if (predict==TRUE){
plot(data$Month,data$predictedratio,ylim=c(0,1),main=paste('quantile predictions','(',dim(mc)[1],'iterations',')'),ylab='Transcript BCR-ABL levels',xlab='Months')
} else{
	values=as.numeric(as.vector(data$ratio))
	getmax=max(values)
	plot(data$Month,values/100,ylim=c(0,1),main=paste('quantile predictions','(',dim(mc)[1],'iterations',')'),ylab='Transcript BCR-ABL levels',xlab='Months')
	}

lat=lattice14_real(mc=mc,last=last,spsize=spsize,data=data,tby=tby)
qts=qtles14_real(lat=lat,tby=tby)
lines(qts[,1],col='red') # 25% quantile
lines(qts[,2],col='blue') # 50% quantile
lines(qts[,3],col='green') # 75% quantile
legend(x=35,y=0.98,legend=c('25% quantile','50% quantile',"75% quantile"),col=c('red','blue','green'),lty=c('solid','solid','solid'),box.lty='dashed')

return(dim(mc)[1])
}
#source("/Users/yilinsmac/Desktop/sigfile functions/real/qtfitplot14_real function.r")
qtfitplot14_real=function(data,mc,last=1000,spsize=100,predict=TRUE,tby=1,erv1=1){
	#mc is the output of a 14d mcmc function, i.e. of dimension n*14, where n is the number of iteration in the MCMC, 
	#and most importantly, the MCMC function should act on data
	#last is the number to take from the end of the chain to sample from 
	# spsize is the sample size
	# erv1, and tby are passed on from pseudodata_real()etc. functions.
	# note that you might notice that there is no m argument, since we are plotting for all the parameter predictions.
	# updated 170201 no matter predict==TRUE or not, the same code. since i changed to real data structure.
if (predict==TRUE){
plot(data$Month,data$ratio,ylim=c(0,max(data$ratio)),main=paste('quantile predictions','(',dim(mc)[1],'iterations',')'),ylab='Transcript BCR-ABL levels',xlab='Months')
} else{
	#values=as.numeric(as.vector(data$ratio))
	#getmax=max(data$ratio)
	plot(data$Month,data$ratio,ylim=c(0,max(data$ratio)),main=paste('quantile predictions','(',dim(mc)[1],'iterations',')'),ylab='Transcript BCR-ABL levels',xlab='Months')
	}

lat=lattice14_real(mc=mc,last=last,spsize=spsize,data=data)
qts=qtles14_real(lat=lat,data=data)
lines(qts$Month,qts$q25,col='red') # 25% quantile
lines(qts$Month,qts$q50,col='blue') # 50% quantile
lines(qts$Month,qts$q75,col='green') # 75% quantile
legend(x=35,y=0.98,bg="transparent",legend=c('25% quantile','50% quantile',"75% quantile"),col=c('red','blue','green'),lty=c('solid','solid','solid'),box.lty='dashed')

return(dim(mc)[1])
}
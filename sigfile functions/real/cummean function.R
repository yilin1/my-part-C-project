#source('/Users/yilinsmac/Desktop/sigfile functions/real/cummean function.r')
cummean=function(mc1,mc2=FALSE,mc3=FALSE,mc4=FALSE,m){
	
#this function plots the cumulated average of the lattice mc1-4, which should be the output of 14d MCMC function, with or without real
#maximum can deal with 4 lattices
# warning will be produced if more than 1 lattice, but doesnt matter.
	meanovertime1=c()
	totaliterates1=dim(mc1)[1]

	for (iteration in 1:totaliterates1){
		meani=sum(mc1[,m][1:iteration])/iteration
		meanovertime1=cbind(meanovertime1,meani)
		}
		plot(meanovertime1[1,],type='l',xlim=c(0,totaliterates1),ylim=c(0,1),xlab='iteration',ylab='cumulated average',main=paste('cumulated average (m=',m,',',totaliterates1,'iterates)'))

if (mc2!=FALSE){
meanovertime2=c()
	totaliterates2=dim(mc2)[1]

	for (iteration in 1:totaliterates2){
		meani=sum(mc2[,m][1:iteration])/iteration
		meanovertime2=cbind(meanovertime2,meani)
		}
lines(meanovertime2[1,],col=2)	

}	
if (mc3!=FALSE){
	
meanovertime3=c()
	totaliterates3=dim(mc3)[1]

	for (iteration in 1:totaliterates3){
		meani=sum(mc3[,m][1:iteration])/iteration
		meanovertime3=cbind(meanovertime3,meani)
		}
lines(meanovertime3[1,],col=3)		

}

if (mc4!=FALSE){

meanovertime4=c()
	totaliterates4=dim(mc4)[1]

	for (iteration in 1:totaliterates4){
		meani=sum(mc4[,m][1:iteration])/iteration
		meanovertime4=cbind(meanovertime4,meani)
		}
	lines(meanovertime4[1,],col=4)		

	}
	
		}

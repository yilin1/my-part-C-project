tra=function(a,n){ # n is the index of the species we are interested in 1-5, a is the output of detindiv() 
	if (n==1){
		plot(a[,1],ylab="HSC h1",xlab='time',ylim=c(0,1),xlim=c(0,50),main='h1')
	}
	if (n==2){
		plot(a[,2],ylab="Healthy Progenitor Cell h2", xlab='time',ylim=c(0,1),xlim=c(0,50),main='h2')
	}
	if (n==3){
		plot(a[,3],ylab="Healthy Differentiated Cell h3", xlab='time', ylim=c(0,1),xlim=c(0,50),main='h3')
	}
	if (n==4){
		plot(a[,4],ylab="LSC l1", xlab='time', ylim=c(0,1),xlim=c(0,50),main='l1')
	}
	if (n==5){
		plot(a[,5],ylab="Differentiated Leukemia Cell l2", xlab='time', ylim=c(0,1),xlim=c(0,50),main='l2')
	}
	if (n==6){
		plot(a[,6],ylab="Approximate Transcript BCR-ABL Level", xlab='time', ylim=c(0,1),xlim=c(0,50),main='BCR-ABL Level')
	}
	abline(h=0)
}


tra=function(a,n){ # n is the index of the species we are interested in 1-5, a is the output of detindiv() 
	if (n==1){
		plot(a[,1],ylab="HSC",ylim=c(0,1),xlim=c(0,50),main='Simulated Trajectory for HSCs')
	}
	if (n==2){
		plot(a[,2],ylab="Healthy Progenitor",ylim=c(0,1),xlim=c(0,50),main='Simulated Trajectory for healthy progenitor population')
	}
	if (n==3){
		plot(a[,3],ylab="Healthy Differentiated Cell",ylim=c(0,1),xlim=c(0,50),main='Simulated Trajectory for healthy differentiated cells')
	}
	if (n==4){
		plot(a[,4],ylab="LSC",ylim=c(0,1),xlim=c(0,50),main='Simulated Trajectory for LSCs')
	}
	if (n==5){
		plot(a[,5],ylab="Differentiated Leukemia Cell",ylim=c(0,1),xlim=c(0,50),main='Simulated Trajectory for differentiated leukemia population')
	}

}

alltra=function(a){# a is the output of detindiv()as above
	par(mfrow=c(2,3))
	tra(a,1)
	tra(a,2)
	tra(a,3)
	tra(a,4)
	tra(a,5)

}
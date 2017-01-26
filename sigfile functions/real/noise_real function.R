noise_real=function(det,sf=0.01,erv1=1){ 
#this function introduce a normal error (mean 0, sd=sqrt(erv1))into a determinstic_real output det, scaled by factor sf. (expecting sf between 0 and 1)
	for (i in 1:(dim(det)[1])){
		r=rnorm(1,mean=0,sd=sqrt(erv1))
		while (det[i,][1]+sf*r <=0){
			r=rnorm(1,mean=0,sd=sqrt(erv1))	
	}
    det[i,][1]=det[i,][1]+sf*r
				
}
return(det)
}
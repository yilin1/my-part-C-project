noise_real=function(det,sf=0.01){ 
#this function introduce a normal error (mean 0, sd=sqrt(erv1==1))into a determinstic_real output det, scaled by factor sf. (expecting sf between 0 and 1)
	for (i in det$Month){
		r=rnorm(1,mean=0,sd=1)
		
		det[which(det$Month==i),][1]=det[which(det$Month==i),][1]+sf*r
				
}
return(det)
}
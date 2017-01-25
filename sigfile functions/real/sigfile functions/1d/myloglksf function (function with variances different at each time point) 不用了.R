myloglksf=function(m,a1,t,tby,psdata,erv1=0.1,sf=1){ ## this is calculating the likelihood given the real data: psdata, for the parameter indexed m to be a1,m is an interger between 1 and 13 inclusive,sf is the scaling factor as in noise() function.
	l=0
	if (m==1){
		gt1=deterministic(i1=a1,t=t,tby=tby)	
	} 
	if (m==2){
		gt1=deterministic(i2=a1,t=t,tby=tby)
	}
	if (m==3){
		gt1=deterministic(i3=a1,t=t,tby=tby)
	}
	if (m==4){
		gt1=deterministic(i4=a1,t=t,tby=tby)
	}
	if (m==5){
		gt1=deterministic(i5=a1,t=t,tby=tby)
	}
	if (m==6){
		gt1=deterministic(c1=a1,t=t,tby=tby)
	}
	if (m==7){
		gt1=deterministic(c2=a1,t=t,tby=tby)
	}
	if (m==8){
		gt1=deterministic(c3=a1,t=t,tby=tby)
	}
	if (m==9){
		gt1=deterministic(c4=a1,t=t,tby=tby)
	}
	if (m==10){
		gt1=deterministic(c5=a1,t=t,tby=tby)
	}
	if (m==11){
		gt1=deterministic(c6=a1,t=t,tby=tby)
	}
	if (m==12){
		gt1=deterministic(c7=a1,t=t,tby=tby)
	}
	if (m==13){
		gt1=deterministic(c8=a1,t=t,tby=tby)
	}
	for (tmpts in 1:(t/tby)) {
   lp=dnorm(psdata[tmpts],gt1[tmpts],sd=sqrt(erv1*(gt1[tmpts]*sf)^2),log=TRUE) 
   l=l+lp
     print(cbind(l,lp,exp(lp), sqrt(erv1*(gt1[tmpts]*sf)^2)))
     
   #print (sqrt(erv1*(gt1[tmpts]*sf)^2))
  }
  print(l)
  return(l)

}

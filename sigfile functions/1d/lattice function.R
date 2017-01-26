lattice=function(m,c,t=50,tby=1,l=1000,sz=100){ #m is the index of the parameter, c is the output of myMCMC(),sz is the number to sample from the last l elements of c, the posterior distribution, 
#this function returns a lattice of values of data generated from different values of parameter sampled from the posterior c.
	d=sample(tail(c,l),size=sz,replace=TRUE) # only sample from the last 10sz00
	w={}
	for (j in 1:sz){
		u={}
		if (m==1){	   
	    u=deterministic(i1=d[j])
		}
		if (m==2){	   
	    u=deterministic(i2=d[j])
		}
		if (m==3){	   
	    u=deterministic(i3=d[j])
		}
		if (m==4){	   
	    u=deterministic(i4=d[j])
		}
		if (m==5){	   
	    u=deterministic(i5=d[j])
		}
		if (m==6){	   
	    u=deterministic(c1=d[j])
		}
		if (m==7){	   
	    u=deterministic(c2=d[j])
		}
		if (m==8){	   
	    u=deterministic(c3=d[j])
		}
		if (m==9){	   
	    u=deterministic(c4=d[j])
		}
		if (m==10){	   
	    u=deterministic(c5=d[j])
		}
		if (m==11){	   
	    u=deterministic(c6=d[j])
		}
		if (m==12){	   
	    u=deterministic(c7=d[j])
		}
		if (m==13){	   
	    u=deterministic(c8=d[j])
		}
		
	 	   w=rbind(w,u)
	}
	return(w)
}

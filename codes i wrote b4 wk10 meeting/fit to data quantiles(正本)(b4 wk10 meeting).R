lattice=function(m,c,t=50,tby=1,n=1000){ #m is the index of the parameter, c is the output of myMCMC(),n is the number to sample from c, the posterior distribution, this function returns a lattice of values of data generated from different values of parameter sampled from the posterior c.
	d=sample(tail(c,500),size=n,replace=TRUE) # only sample from the last 500
	w={}
	for (j in 1:n){
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

qtles=function(w,t=50,tby=1){ # w is the output from the above function, this function returns the quantile values of w.
	q25={}
	q75={}
	q50={}
	for (i in 1:((t/tby)+1)){
	 d=quantile(w[,i])
	 q25[i]=d[2]
	 q50[i]=d[3]
	 q75[i]=d[4]
	 }
	 qs=cbind(q25,q50,q75)
	 return(qs)
}



# now plot
qtfitplot=function(a,m,t=50, tby=1,n){ # a is the real data,n is the number of samples to draw from posterior c.
	plot(a,ylim=c(0,1),main='fit to data using quantiles',ylab='data')
	c=myMCMC(a,m=m)
	w=lattice(c,m=m,t=t,tby=tby,n=n)
	s=qtles(w,t=t,tby=tby)
	lines(s[,1],col='red') # 25% quantile
	lines(s[,2],col='blue') # 50% quantile
	lines(s[,3],col='green') # 75% quantile
	return(m)

}

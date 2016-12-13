lattice=function(m,c,t=50,tby=1,n=1000){ #m is the index of the parameter, c is the output of myMCMC(),n is the number to sample from c, the posterior distribution, this function returns a lattice of values of data generated from different values of parameter sampled from the posterior c.
	d=sample(c,size=n,replace=TRUE)
	w={}
	for (j in 1:n){
		u={}
	  for (i in 1:((t/tby)+1)){   
	    u[i]=deterministic(c7=d[j])[i] # try c7 first
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
	plot(a,ylim=c(0,1),main='fit to data using quantiles')
	c=myMCMC(a,m=m)
	w=lattice(c,m=m,t=t,tby=tby,n=n)
	s=qtles(w,t=t,tby=tby)
	lines(s[,1],col='red') # 25% quantile
	lines(s[,2],col='blue') # 50% quantile
	lines(s[,3],col='green') # 75% quantile
	return(m)

}

## 过河拆桥
# plot(s[,1],ylim=c(0,1)) #25% quantile
# points(s[,2],col='red') # 50% quantile
# points(s[,3],col='green') # 75% quantile

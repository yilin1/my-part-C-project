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


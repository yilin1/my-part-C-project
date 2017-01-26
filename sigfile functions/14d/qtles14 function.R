source("/Users/yilinsmac/Desktop/sigfile functions/14d/qtles14 function.r")

qtles14=function(lat,t=50,tby=1){ 
	# lat is the output from the lattice() function, 
	#this function returns the quantile values of the lattice "lat" at each time point.
	q25={}
	q75={}
	q50={}
	for (i in 1:((t/tby)+1)){
	 d=quantile(lat[,i])
	 q25[i]=d[2]
	 q50[i]=d[3]
	 q75[i]=d[4]
	 }
	 qts=cbind(q25,q50,q75)
	 return(qts)
}


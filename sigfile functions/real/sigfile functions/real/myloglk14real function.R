#source("/Users/yilinsmac/Desktop/sigfile functions/real data/myloglk14real function.r") 
#this code doesnt work at first, because theres an autosaved version in the same trajectory.

# if i don;t change variance, updated!
myloglk14real=function(a1,data,tby=1,erv1=1){  #this is calculating the likelihood given the real data: data, 
# if the parameter vector is given by a1 (so a1 is a vector of length 14)

#a1[14] is the scaling factor as in noise() function, coming with erv1, which is the variance of epison to be scaled by a1[14] in noise.
    t=max(data$Month)
	l=0
	gt1=deterministic_real(i1=a1[1],i2=a1[2],i3=a1[3], i4=a1[4],i5=a1[5],c1=a1[6],c2=a1[7], c3=a1[8], c4=a1[9],c5=a1[10], c6=a1[11], c7=a1[12],c8=a1[13], t=t,tby=tby)	
	ratios=as.numeric(as.vector(data$ratio))
	ratiomonth=as.data.frame(cbind(ratios,data$Month))
	colnames(ratiomonth)[2]='Month'
	#now ratiomonth has the same structure as the deterministic_real() output, it is the counterpart of data in myloglk14realtest() function. The above steps is just to convert the real data into the required form which is the output form of detrministic_real()
	#this is the only difference between the two myloglk14real functions.
		for (tmpts in (data$Month)) {
	observed=ratiomonth[which(ratiomonth$Month==tmpts),]$ratios
predicted=gt1[which(gt1$Month==tmpts),]$predictedratio
   lp=dnorm(observed,predicted,sd=sqrt((a1[14]^2)*erv1),log=TRUE) 
   l=l+lp
      #print(cbind(l,lp,exp(lp),sqrt(a1[14]^2*erv1)))
    # print(sqrt(erv1))
  }
  # print(l)
  return(l)

}








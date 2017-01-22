source("/Users/yilinsmac/Desktop/sigfile functions/real data/myloglk14real function.r") 
#this code doesnt work at first, because theres an autosaved version in the same trajectory.

# if i don;t change variance, updated!
myloglk14realtest=function(a1,data,tby=1,erv1=1){  #this is calculating the likelihood given the real data: data, 
	#but this is a test function for the myloglk14real function, since it is using determinsitic() output, and the data structure is different from the real ones.
# if the parameter vector is given by a1 (so a1 is a vector of length 14)

#a1[14] is the scaling factor as in noise() function, coming with erv1, which is the variance of epison to be scaled by a1[14] in noise.
    t=max(data$Month)
	l=0
	gt1=deterministic_real(i1=a1[1],i2=a1[2],i3=a1[3], i4=a1[4],i5=a1[5],c1=a1[6],c2=a1[7], c3=a1[8], c4=a1[9],c5=a1[10], c6=a1[11], c7=a1[12],c8=a1[13], t=t,tby=tby)	
	#ratios=as.numeric(as.vector(data$ratio))
	#ratiomonth=as.data.frame(cbind(ratios,data$Month))
	#colnames(ratiomonth)[2]='Month'
		for (tmpts in (data$Month)) {
observed=data[which(data$Month==tmpts),]$predictedratio
predicted=gt1[which(gt1$Month==tmpts),]$predictedratio
   lp=dnorm(observed,predicted,sd=sqrt((a1[14]^2)*erv1),log=TRUE) 
   l=l+lp
      #print(cbind(l,lp,exp(lp),sqrt(a1[14]^2*erv1)))
    # print(sqrt(erv1))
  }
  # print(l)
  return(l)

}








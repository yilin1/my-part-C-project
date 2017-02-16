#source("/Users/yilinsmac/Desktop/sigfile functions/real/myloglk14realtest.r") 
#this code doesnt work at first, because theres an autosaved version in the same trajectory.

# if i don;t change variance, updated!
myloglk14realtest=function(a1,data){  #this is calculating the likelihood given the real data: data, 
	#but this is a test function for the myloglk14real function, since it is using determinsitic() output, and the data structure is different from the real ones.
# if the parameter vector is given by a1 (so a1 is a vector of length 14)

#a1[14] is the scaling factor as in noise() function, coming with variance 1, which is the variance of epison to be scaled by a1[14] in noise.

	  l=0
	gt1=deterministic_real(data=data,a0=a1)	
	#ratios=as.numeric(as.vector(data$ratio))
	#ratiomonth=as.data.frame(cbind(ratios,data$Month))
	#colnames(ratiomonth)[2]='Month'
		for (tmpts in (data$Month)) {
    observed=data[which(data$Month==tmpts),]$ratio
    predicted=gt1[which(gt1$Month==tmpts),]$ratio
   lp=dnorm(observed,predicted,sd=sqrt((a1[14]^2)*1),log=TRUE) 
   l=l+lp
      #print(cbind(l,lp,exp(lp),sqrt(a1[14]^2*1)))
    # print(sqrt(noise variance=1))
  }
  # print(l)
  return(l)
}








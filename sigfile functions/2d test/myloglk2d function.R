 source("/Users/yilinsmac/Desktop/sigfile functions/2d test/myloglk2d function.r") 
#this code doesnt work at first, because theres an autosaved version in the same trajectory.

# test c4 & c8

# if i don;t change variance, updated!
myloglk2d=function(a1,t,tby,psdata,erv1=1,sf=0.01){ ## this is calculating the likelihood given the real data: psdata, 
# for the parameter vector a1 (so a1 is a vector of length 2),
# m is an interger between 1 and 13 inclusive,
#sf is the scaling factor as in noise() function, coming with erv1, which is the variance of epison to be scaled in noise.
	l=0
	gt1=deterministic(i1=0.5,i2=0.5,i3=0.5, i4=0.5,i5=0.5,c1=0.5,c2=0.5, c3=0.5, c4=a1[1],c5=0.5, c6=0.5, c7=0.5,c8=a1[2], t=t,tby=tby)	
		for (tmpts in 1:(t/tby)) {
   lp=dnorm(psdata[tmpts],gt1[tmpts],sd=sqrt((sf^2)*erv1),log=TRUE) 
   l=l+lp
      #print(cbind(l,lp,exp(lp),sqrt(sf^2*erv1)))
    # print(sqrt(erv1))
  }
  # print(l)
  return(l)

}








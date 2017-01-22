# source("/Users/yilinsmac/Desktop/sigfile functions/2d/myloglk2 function.r") 
#this code doesnt work at first, because theres an autosaved version in the same trajectory.

# if i don;t change variance, updated!
myloglk13=function(a1=,t,tby,psdata,erv1=1,sf=0.01){ ## this is calculating the likelihood given the real data: psdata, 
# for the parameter vector a1 (so a1 is a vector of length 13),
# m is an interger between 1 and 13 inclusive,
#sf is the scaling factor as in noise() function, coming with erv1, which is the variance of epison to be scaled in noise.
	l=0
	gt1=deterministic(i1=a1[1],i2=a1[2],i3=a1[3], i4=a1[4],i5=a1[5],c1=a1[6],c2=a1[7], c3=a1[8], c4=a1[9],c5=a1[10], c6=a1[11], c7=a1[12],c8=a1[13], t=t,tby=tby)	
		for (tmpts in 1:(t/tby)) {
   lp=dnorm(psdata[tmpts],gt1[tmpts],sd=sqrt((sf^2)*erv1),log=TRUE) 
   l=l+lp
      #print(cbind(l,lp,exp(lp),sqrt(sf^2*erv1)))
    # print(sqrt(erv1))
  }
  # print(l)
  return(l)

}








proposeone=function(mc,k,d=14){
  #this function proposes one number according to the output of makeproposal() function.
  #mc is the 14d output lattice of 14dMCMC, k is the base in base converter (the one not 10), 
  #d is 14 in our problem unless otherwise specified.
  base10=sample(x =c(1:((k^d)-1),0), size = 1, prob = makeproposal(mc=mc,k=k,d=d), replace=T)
  cv=tobaseK(base10=base10,k=k,d=d)
  v=c()
  for (i in 1:length(cv)){
    vi=runif(n=1,min=(cv[i]-1)/k,max=cv[i]/k)
    v[i]=vi
  }
  return (v)
}

#test
#mc=remissionfit
#proposeone(mc=remissionfit,k=3,d=14)

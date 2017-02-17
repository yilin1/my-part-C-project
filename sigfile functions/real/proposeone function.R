proposeone=function(mc,k,d=14,pkhat){
  #this function proposes one number according to the output of makeproposal() function.
  #mc is the 14d output lattice of 14dMCMC, k is the base in base converter (the one not 10), 
  #d is 14 in our problem unless otherwise specified.
  #pkhat is the distribution constructed from the first run "mc", using makeproposal
  #i.e., pkhat is the output of of makeproposal(mc=mc,k=k,d=d)
  # actually the mc argument is redudant, just do not want to delete it everywhere, ranhou you you bug.
  base10=sample(x =c(1:((k^d)-1),0), size = 1, prob = pkhat, replace=T)
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
proposeone(mc=relap7fit2,k=8,d=5,pkhat=pkhat)

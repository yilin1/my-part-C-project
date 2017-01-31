sublattice=function(mc,kvec=rep(100,14)){
  
  #this returns a sub lattice, i.e. m=1:14 version of the function subchain
  #kvec is a vector of 14d now, each dimension specifies 
  #every how many to subsample from each dimension
  # so the result is not the same length for each dimension
  sublat=c()
  for (i in 1:14){
    h=subchain(mc,m=i,k=kvec[i])
    maxlength=max(length(h),dim(sublat)[1])
    length(h)=maxlength
    sublat=cbind(sublat,h)
  }
  return(sublat)
}

#test codes
#kvec=rep(100,14)
#kvec[2]=200
#kvec[3]=300

baseKmc=function(mc,numbin,d=14){
  #mc is the nitr*14 14d mcmc output lattice, OR can just be a row.
  # or you can subrow the 14d who lattice to get rows for specific variables.
  #this function converts this lattice in real number to a factor.
  #d is the dimension you are proposing
  cv=c()
  
  if (length(mc)==d){ #in the case where the input is just a row, dim(mc)[1] returns Null, not one
    #so as long as mc is not just a row, the else{} statement below can cover.
    T=1
    mc=rbind(mc,mc)
  } else {T = dim(mc)[1]}
  
for (i in 1:T){
  pattern=as.vector(as.integer(as.factor(cut(mc[i,],breaks=seq(0,1,by=1/numbin)))))
  cv=rbind(cv,pattern) 
  }
  return(cv)
}

#?seq_along
#seq_along(from=0,to=1,length.out=1/numbin)
#?split
#?factor
#ff=factor(seq(0,1,by=0.25),levels=c(0.25,0.5,0.75,1))
#split(, ceiling(seq_along(0:1)/2))
#?cut
#as.integer(as.factor(cut(remissionfit[1,],breaks=c(0,0.25,0.5,0.75))))

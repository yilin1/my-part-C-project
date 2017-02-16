baseKmc=function(mc,numbin,d=14){
  #mc is the nitr*14 14d mcmc output lattice, OR can just be a row.
  # or you can subrow the 14d who lattice to get rows for specific variables.
  #this function converts this lattice in real number to a factor.
  #d is the dimension you are proposing
  cv=c()
  if (d==1){ #this means input mc is also 1-d, but is a column, not a row.
    T=1
    mc=t(mc)
  } else if (length(mc)==d){ #in the case where the input is just a row, dim(mc)[1] returns Null, not one
    #so as long as mc is not just a row, the else{} statement below can cover.
    T=1
    mc=rbind(mc,mc)
  } else {T = dim(mc)[1]}
  
for (i in 1:T){
  pattern=as.integer(as.factor(cut(mc[i,],breaks=seq(0,1,by=1/numbin)))) #i deleted the outmost layer as.vector() on 170214, since i do not recall why i need it.
  cv=rbind(cv,pattern) 
  }
  return(cv) #returns a row of length number of iteration if mc is a column (i.e. if d==1 is true in the IF statement, so need to transpose back in the following use of the output from this function.)
}

#?seq_along
#seq_along(from=0,to=1,length.out=1/numbin)
#?split
#?factor
#ff=factor(seq(0,1,by=0.25),levels=c(0.25,0.5,0.75,1))
#split(, ceiling(seq_along(0:1)/2))
#?cut
#as.integer(as.factor(cut(remissionfit[1,],breaks=c(0,0.25,0.5,0.75))))

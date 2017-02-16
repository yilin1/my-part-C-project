grouping=function(mc,m=14,evk=10){
  #this function returns a correlation matrix.
  #those >0.3 should be taken care of.
  # m is the number of columns (i.e., variables) from 1 to m you want to see in the correlation matrix, 
  # so if using the default m=14, the whole correlation matrix would be returned.
  library(lattice)
  rt=mc[,1:m]
  rts=rt[seq(1,dim(mc)[1],by=evk),]
  splom(rts,pch=".")
  correlationm=cor(rts)
  for (i in 1:14){
    var=correlationm[,i]
    absv=abs(var)
    j=which(absv>0.3)
   #l=which(absv==1)
 print(paste("i=",i,";"))
             print(paste("j=",j))
             print("")
  }
  return(correlationm)
  
}

# test
#mc=remis8fit260w1
#m=14
#then run the above codes.

#cor(rts)
#cov(rts)
#which(correlationm==-0.04434869)
#lower.tri((correlationm))
#lowerTriangle(correlationm)

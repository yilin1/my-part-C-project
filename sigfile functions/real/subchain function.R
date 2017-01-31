subchain=function(mc,m,k=100){
  #this function returns a subchain subsampled from the mth column chain-lattice mc, 
  #mc should be a 14d myMCMC output
  #subsampling is every kth element from the chain mc[,m]
    chain=mc[,m]
    subchain=c()
    for (i in 1:length(chain)){
     if (i %% k==0){
      subchain=rbind(subchain,chain[i])
  }
    }
    return(subchain)
}

# test codes:
#tet=realtest14[,2]
#k=200
#for (i in 1:(length(tet)/k)){
#print(paste(tet[i*k]==subchain(realtest14,m=2,k=k)[i]))
#}
# great 

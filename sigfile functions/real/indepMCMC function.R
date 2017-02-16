indepMCMC=function(data,mc,k=3,a0=rep(0.5,14),evk=10,n=3000,d=14){ 
  # this is the function to produce second run based on a first run output from a 14d MCMC output, i.e., the mc.
  
  #data is the pseudodata_real() output to deal with; noise variance is the noise variance, 
  #n is the number of times of MCMC.
  #mc is the result of a first run, used to construct proposal from, it should be output of a normal 14d MCMC function, e.g. fuben;
  #k is the base k number 
     # (related to when we construct the approximate distribution from first run (the proposal distribution))
  # evk is such that we only record every "evk"th iteration.
  #a0 is the vector of initial guesses.
  
  ##  now start implementing MCMC:
  pkhat=makeproposal(mc=mc,k=k,d=d)
  a=c()
  a=rbind(a,a0)
  
  # log-likelihood l for datat using guess:
  lold=myloglk14realtest(a1=a0,data=data)
  count=0
  curpars=a0 #current 14-d parameter guess at iteration 0
  # for loop to loop over n iterations
  for (MCitr in 1:(n-1)){
      v2=proposeone(mc=mc,k=k,d=d)
      if (rangeteller(v2)==FALSE){
        curpars=curpars
        # a[(MCitr+1),]=a[MCitr,]
        # print(paste("acurrent", a[MCtime],", aproposed rejected=", a2,"outside of the prior"))
      } else {
        # to compute log-likelihood based on guess v2:
        curpars=curpars #feihua
        lnew=myloglk14realtest(a1=v2,data=data)
        
        ## to compute M-H
        baseKvdash=baseKmc(mc=v2,numbin=k)
        Kvdash=tobase10(row=baseKvdash,k=k)
        if (Kvdash!=0){
        qvdash=pkhat[Kvdash]
        } else { qvdash=pkhat[k^d]}
        
        baseKv=baseKmc(mc=curpars,numbin=k)
        Kv=tobase10(row=baseKv,k=k)
        if (Kv!=0){
          qv=pkhat[Kv]
        } else {qv=pkhat[k^d]
        }
        
        alpha=min(1,exp(lnew-lold)*qv/qvdash)
        u=runif(1)
        #   print(paste("MCtime=", MCtime,", lold=",lold, ", lnew=",lnew, "likratio=",exp(lnew-lold) ))
        if (u<=alpha){
          curpars=v2
          #a[(MCitr+1),]=curpars
          count=count+1
          lold=lnew #the proposal has become the current (old) stage 
          #	print(paste("acurrent", a[MCtime],", aproposed accepted=", a2,", alpha=", alpha,", u=",u ))
        } # end if
        else{
          curpars=curpars
          #a[(MCitr+1),]=a[MCitr,]
          #print(paste("acurrent", a[MCtime],", aproposed rejected=", a2,", alpha=", alpha,", u=",u ))
        }# end else
      } #end else
      lnew=NA	 
    if (MCitr %% evk ==0){
      a=rbind(a,curpars)
    }
    
  } #end for (MCtime 1:n-1)
  print(paste('acceptance rate=',count/n,'lold=',lold,'a0=',a0))
  return(a)
}

indepMCMCsplit=function(data,mc,k,split1=c(1:5),split2=c(6:13),split3=14,a0=rep(0.5,14),evk=10,n=3000){ 
  # this is the function to produce second run based on a first run output from a 14d MCMC output, i.e., the mc.
  
  #data is the pseudodata_real() output to deal with; noise variance is the noise variance, 
  #n is the number of times of MCMC.
  #mc is the result of a first run, used to construct proposal from, it should be output of a normal 14d MCMC function, e.g. fuben;
  #k is the base k number, as a vector so that each split can have different k number.
  # (related to when we construct the approximate distribution from first run (the proposal distribution))
  # evk is such that we only record every "evk"th iteration.
  #a0 is the vector of initial guesses.
  
  ##  now start implementing MCMC:
  a=c()
  a=rbind(a,a0)
  
  # log-likelihood l for datat using guess:
  lold=myloglk14realtest(a1=a0,data=data)
  count=rep(0,14)
  curpars=a0
   #current 14-d parameter guess at iteration 0
  # for loop to loop over n iterations
  for (MCitr in 1:(n-1)){
    # split1
    mu1=curpars[split1]
    d1=length(split1)
    pkhat=makeproposal(mc=mc[,split1],k=k[1],d=d1)
    v2=proposeone(mc=mc[,split1],k=k[1],d=d1)
    if (rangeteller(v2)==FALSE){ #rangeteller returns TRUE if within range (0,1)
      curpars=curpars
      # a[(MCitr+1),]=a[MCitr,]
      # print(paste("acurrent", a[MCtime],", aproposed rejected=", a2,"outside of the prior"))
    } else {
      # to compute log-likelihood based on guess v2:
      curpars[split1]=v2
      lnew=myloglk14realtest(a1=curpars,data=data)
      
      ## to compute M-H
      baseKvdash=baseKmc(mc=v2,numbin=k[1],d=d1)
      Kvdash=tobase10(row=baseKvdash,k=k[1])
      if (Kvdash!=0){
        qvdash=pkhat[Kvdash]
      } else { qvdash=pkhat[(k[1])^d1]}
      
      baseKv=baseKmc(mc=mu1,numbin=k[1],d=d1)
      Kv=tobase10(row=baseKv,k=k[1])
      if (Kv!=0){
        qv=pkhat[Kv]
      } else {qv=pkhat[(k[1])^d1]
      }
      
      alpha=min(1,exp(lnew-lold)*qv/qvdash)
      u=runif(1)
      #   print(paste("MCtime=", MCtime,", lold=",lold, ", lnew=",lnew, "likratio=",exp(lnew-lold) ))
      if (u<=alpha){
        curpars[split1]=v2
        #a[(MCitr+1),]=curpars
        count[split1]=count[split1]+1
        lold=lnew #the proposal has become the current (old) stage 
        #	print(paste("acurrent", a[MCtime],", aproposed accepted=", a2,", alpha=", alpha,", u=",u ))
      } # end if
      else{
        curpars[split1]=mu1
        #a[(MCitr+1),]=a[MCitr,]
        #print(paste("acurrent", a[MCtime],", aproposed rejected=", a2,", alpha=", alpha,", u=",u ))
      }# end else
    } #end else
    lnew=NA	 
    
    # split2
    mu2=curpars[split2]
    d2=length(split2)
    pkhat=makeproposal(mc=mc[,split2],k=k[2],d=d2)
    w2=proposeone(mc=mc[,split2],k=k[2],d=d2)
    if (rangeteller(w2)==FALSE){ #rangeteller returns TRUE if within range
      curpars=curpars
      # a[(MCitr+1),]=a[MCitr,]
      # print(paste("acurrent", a[MCtime],", aproposed rejected=", a2,"outside of the prior"))
    } else {
      # to compute log-likelihood based on guess v2:
      curpars[split2]=w2
      lnew=myloglk14realtest(a1=curpars,data=data)
      
      ## to compute M-H
      baseKvdash=baseKmc(mc=w2,numbin=k[2],d=d2)
      Kvdash=tobase10(row=baseKvdash,k=k[2])
      if (Kvdash!=0){
        qvdash=pkhat[Kvdash]
      } else { qvdash=pkhat[(k[2])^d2]}
      
      baseKv=baseKmc(mc=mu2,numbin=k[2],d=d2)
      Kv=tobase10(row=baseKv,k=k[2])
      if (Kv!=0){
        qv=pkhat[Kv]
      } else {qv=pkhat[(k[2])^d2]
      }
      
      alpha=min(1,exp(lnew-lold)*qv/qvdash)
      u=runif(1)
      #   print(paste("MCtime=", MCtime,", lold=",lold, ", lnew=",lnew, "likratio=",exp(lnew-lold) ))
      if (u<=alpha){
        curpars[split2]=w2
        count[split2]=count[split2]+1
        lold=lnew #the proposal has become the current (old) stage 
        #	print(paste("acurrent", a[MCtime],", aproposed accepted=", a2,", alpha=", alpha,", u=",u ))
      } # end if
      else{
        curpars[split2]=mu2
        #print(paste("acurrent", a[MCtime],", aproposed rejected=", a2,", alpha=", alpha,", u=",u ))
      }# end else
    } #end else
    lnew=NA	 
    
    # split3
    mu3=curpars[split3]
    d3=length(split3)
    pkhat=makeproposal(mc=mc[,split3],k=k[3],d=d3)
    u2=proposeone(mc=mc[,split3],k=k[3],d=d3)
    if (rangeteller(u2)==FALSE){ #rangeteller returns TRUE if within range
      curpars=curpars
      # print(paste("acurrent", a[MCtime],", aproposed rejected=", a2,"outside of the prior"))
    } else {
      # to compute log-likelihood based on guess v2:
      curpars[split3]=u2
      lnew=myloglk14realtest(a1=curpars,data=data)
      
      ## to compute M-H
      baseKvdash=baseKmc(mc=u2,numbin=k[3],d=d3)
      Kvdash=tobase10(row=baseKvdash,k=k[3])
      if (Kvdash!=0){
        qvdash=pkhat[Kvdash]
      } else { qvdash=pkhat[(k[3])^d3]}
      
      baseKv=baseKmc(mc=mu3,numbin=k[3],d=d3)
      Kv=tobase10(row=baseKv,k=k[3])
      if (Kv!=0){
        qv=pkhat[Kv]
      } else {qv=pkhat[(k[3])^d3]
      }
      
      alpha=min(1,exp(lnew-lold)*qv/qvdash)
      u=runif(1)
      #   print(paste("MCtime=", MCtime,", lold=",lold, ", lnew=",lnew, "likratio=",exp(lnew-lold) ))
      if (u<=alpha){
        curpars[split3]=u2
        count[split3]=count[split3]+1
        lold=lnew #the proposal has become the current (old) stage 
        #	print(paste("acurrent", a[MCtime],", aproposed accepted=", a2,", alpha=", alpha,", u=",u ))
      } # end if
      else{
        curpars[split3]=mu3
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

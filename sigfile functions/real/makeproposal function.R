makeproposal=function(mc,k,d=14){
  #mc is the nitr*14 14dMCMC output lattice, or a variable sub-sampled proportion of it
  #k is the base, also the number of bins
  #d is the dimension of our problem, default =14
  baseK=baseKmc(mc=mc,numbin=k,d=d)
  pk=rep(1,(k^d)-1)
  pk0=1
  sm=sum(pk)+pk0
  if (d==1){ #d=1 implies it is a column that we are dealing with. in particular, it is for m=14, the rho.
   # and the baseK as the output from baseKmc will be a very long row (dim=1*num of iteration), transpose it now
    # so that the next step would not treat the whole row as a single number in base k with (num of iteration) that many digits.
     baseK=t(baseK)
  }
  for (i in 1:dim(baseK)[1]){
    base10=tobase10(row=baseK[i,],k=k)
    if (base10==0){
      pk0=pk0+1
    } else{
    pk[base10]=pk[base10]+1
    }
  }
  pk[k^d]=pk0
  pkhat=pk/(dim(baseK)[1]+sm)
  return(pkhat) #returns a vector of dimension 1*(k^d), specifying the proportion of points 
  #for that corresponding pattern.
}

# test

mc=remissionfit
d=14
k=3
pk=rep(1,((k^d)-1))
pk0=1
sm=sum(pk)+pk0
baseKall=baseKmc(mc=mc,numbin=k)
baseK=baseKall[1:3,]
#then run the for loop above
pkhat=makeproposal(mc=mc,k=k,d=d)

#baseK-1
#r1
r1=tobase10(baseK[1,],k=k)
pkhat[r1]
pk[r1]
r2=tobase10(baseK[2,],k=k)
pkhat[r2]
pk[r2]
r3=tobase10(baseK[3,],k=k)
pkhat[r2]
pk[r3]
# find out those all ones.
a=c()
for (i in 1:dim(baseKall)[1]){
  v=1:14
  am=baseKall[i,][v]==rep(1,14)
  if (am[1]==TRUE & am[2]==TRUE & am[3]==TRUE & am[4]==TRUE & am[5]==TRUE & am[6]==TRUE & am[7]==TRUE & am[8]==TRUE & am[9]==TRUE & am[10]==TRUE & am[11]==TRUE & am[12]==TRUE & am[13]==TRUE & am[14]==TRUE){
  a=rbind(a,am)
  }}
#mei you
pk[k^d]
pkhat[k^d]
typeof(pk)
typeof(c(1))
#pk[r3]
#z[r1]
#2/(3+3^14)

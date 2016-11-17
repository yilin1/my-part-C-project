datat=pseudodata() # "real"data
n=1000
a=rep(NA,n)
a1=runif(1) 
a[1]=a1
gt1=pesudodata(c8=a1)
 
# log-likelihood l for datat using guess:
l=rep(1,2)
 for (tmpts in 1:(t/tby)) {
   lp=dnorm(gt1[tmpts], datat[tmpts], 0.1,log=TRUE) 
   l[1]=l[1]+lp
  }
 
# Using for-loop
for (MCtime in 1:(n-1)){
# now propose a new candidate for a:
a2=rnorm(1,a[MCtime],0.1) 
if (a2<0 || a2>1){
 a[MCtime+1]=a[MCtime]
} else {
 gt2<-pseudodata(c8=a2)

# to compute log-likelihood based on guess a2:
t=30
tby=0.1
 for (tmpts in 1:(t/tby)) {
   lp=dnorm(datat[tmpts],gt2[tmpts],0.1,log=TRUE) #assuming variance to be 1 for now
   l[2]=l[2]+lp
  }
 
## to compute M-H
  alpha=min(1,exp(l[2]-l[1]))
   u=runif(1)
   if (u<=alpha){
	a[MCtime+1]=a2
	l[1]=l[2]
      } else{
		a[MCtime+1]=a[MCtime]

	 }}}


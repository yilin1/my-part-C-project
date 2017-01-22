test14d=function(dimen,numsamp=15,k=20,niter=3000,erv2){
# this is a test function for myMCMC14a_vtest_evk
# it would return a lattice of dimension niter-(dimen*numsamp) of the iteration results. 
# and it would also produce plots. plots can be reconstruted with the result.
#dimen is the number of parameter you want to test
#numsamp is the number of samples, since you obviously cannot test all the cases
# k is used in the MCMC algorithm, only every kth draws is recorded;
#niter is the number of iteration in computing the samples.

# using same data as 1d and 2d
#erv2=rep(0.01,14)
erv2[14]=0
psdata=pseudodata(i1=0.2, i2=0.2, i3=0.3, i4=0.4, i5=0.4,c1=0.9, c2=0.8,c3=0.7,c4=0.6, c5=0.6, c6=0.4, c7=0.3, c8=0.2) #sf=0.01 by default

# choose 10 out of 56 possible 3d combinations.
combd=combn(8,dimen)
w=sample(1:(dim(combd)[2]),numsamp,replace=FALSE)
v0=combd[,w]
V=v0+5
print(V)
print(v0)
mvd={}
for (i in 1:numsamp){
v=V[,i]
print(v)
append=myMCMC14a_vtest_evk(psdata=psdata,k=k,v=v,n=niter,erv2=erv2)
mvd=cbind(mvd,append[,v])
}

tes14dtraceplot(mvd=mvd,numsamp=numsamp,dimen=dimen)

print(v-5)
#print(tail(chain,5))

print(V-5)
return(mvd)
#sighist14(mc=append,m=v[2],last=500)
#indivtracplot14(append,last=500)
}
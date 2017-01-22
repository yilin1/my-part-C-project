erv2=rep(0.01,14)
erv2[14]=0
psdata=pseudodata(i1=0.2, i2=0.2, i3=0.3, i4=0.4, i5=0.4,c1=0.9, c2=0.8,c3=0.7,c4=0.6, c5=0.6, c6=0.4, c7=0.3, c8=0.2) #sf=0.01 by default

# 2d combination, w is all the 2 by 2 combinations 
w={}
binar=rep(0,8)
for (i in 1:8){
	binar[i]=1
	for (j in (i+1):8){
		if (i+1<9){
		binar[j]=1
		v0=which(binar==1)
		w=cbind(w,v0)
		binar=rep(0,8)
		binar[i]=1
	}
	}
	binar=rep(0,8)
		
}

mv2={}
for (i in 1:28){
v=w[,i]
append=myMCMC14a_vtest(psdata,v=v,n=1000,erv2=erv2)
mv2=cbind(mv2,append[,v])
}

v0=w[,26]
v=v0+5
print(v)
append=myMCMC14a_vtest_evk(psdata,v=v,n=6000,k=40,erv2=erv2)
traceplot14(append,m=v[1],last=400)
lines(append[,v[2]],col='red')
legend(x=3300,y=1,legend=c('v[1]','v[2]'),lty=c('solid','solid'),col=c('black','red'))

tail(cbind(append[,v[1]],append[,v[2]]),20)

sighist14(mc=append,m=v[2],last=500)

#comb3=combn(8,3,FUN=myMCMC)
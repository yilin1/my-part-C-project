a1=rep(0.5,14)
a1[1]=0.5
a1[2]=0.5
a1[3]=0.5
a1[4]=0.5
a1[5]=0.5
a1[6]=0.9
a1[7]=0.01
a1[8]=0.9
a1[9]=0.01
a1[10]=0.01
a1[11]=0.01
a1[12]=0.01
a1[13]=0.01
a1[14]=0.01

myloglk14real(data=p2,a1=a1)
erv2[1]=0.08
erv2[2]=0.01
erv2[3]=0.004
erv2[4]=0.1
erv2[5]=0.1
erv2[6]=0.1
erv2[7]=0.06
erv2[8]=0.08
erv2[9]=0.02
erv2[10]=0.06
erv2[11]=0.1
erv2[12]=0.1
erv2[13]=0.06
erv2[14]=0

mrealp2=myMCMC14a_vtest_evk_real(data=p2,v=1:13,k=10,n=50000,erv1=1,erv2=erv2,tby=1)

traceplot14(mc=mrealp2,m=5,last=500)
indivtracplot14(mc=mrealp2,last=500)
tail(mrealp2)
qtfitplot14(p2,mc=mrealp2,last=200,spsize=50,)

lkplot14real(data=p2,m=2,parvec=a1)

dr=deterministic_real(c8=0.8,c7=0.9,c6=0.3)
mvdr=myMCMC14a_vtest_evk_realtest(data=dr,k=10,v=11:13,n=2000,erv2=erv2)

parvec=rep(0.5,14)
parvec[11]=0.3
parvec[12]=0.8
parvec[13]=0.8
parvec[14]=1e-2
lkplot14realtest(m=13,parvec=parvec,data=dr)
loglkplot14realtest(m=12,parvec=parvec,data=dr)

do=deterministic(c8=0.8,c7=0.8,c6=0.3)
loglkplot14(psdata=do,m=12,parvec=parvec)
par(mfrow=c(2,1))
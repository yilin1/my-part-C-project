# this file wants to check if 14a_evk works.(i have checked 14a_vtest_evk yesterday works till 2d at least, and want to see, if i check 14a_vtest_evk, would that mean 14a_evk work as well, as 14a_evk is just 14a_vtest_evk modified without choice of v.)

evkdata=pseudodata(i1=0.8,i2=0.8,i3=0.8,i4=0.8,i5=0.8,c1=0.8,c2=0.8,c3=0.8,c4=0.8,c5=0.8,c6=0.8,c7=0.8,c8=0.8)

det=deterministic(i1=0.8,i2=0.8,i3=0.8,i4=0.8,i5=0.8,c1=0.8,c2=0.8,c3=0.8,c4=0.8,c5=0.8,c6=0.8,c7=0.8,c8=0.8)

m1=myMCMC14a_evk(psdata=det,k=10,n=2000)
m2=myMCMC14a(psdata=det,n=1000)
indivtracplot14(m2,last=150)
qtfitplot14(psdata=evkdata,mc=m2,last=100,spsize=50)

traceplot14(m1,m=9)

a1=pseudodata(i4=0.5,t=30,tby=1)
allplots(a1,t=30,tby=1,m=4)

a2=pseudodata(c1=0.4,t=30,tby=1)
allplots(a2,t=30,tby=1,m=5)

A1=pseudodata(i1=0.2,i2=0.2,i3=0.2,i4=0.4,i5=0.2,c1=0.04,c2=0.8,c3=0.19,c4=0.9,c5=0.2,c6=0.88,c7=0.4,c8=0.9,t=30,tby=0.1)
pvalcpa(A1,t=30,tby=1,m=4)

plot(A1)
lines(A1) 
D1=deterministic(i1=0.2,i2=0.2,i3=0.2,i4=0.2,i5=0.2,c1=0.04,c2=0.8,c3=0.19,c4=0.9,c5=0.2,c6=0.88,c7=0.4,c8=0.9,t=30,tby=0.1)
lines(D1,col='red')
lines(A1,col='green')

lines(deterministic(i4=0.4,t=30,tby=1))






pseudeter=function(det){# input a deterministic output,det and return the noised counterpart (with the same parameter)(noise with scaling factor=0.5 and sd=0.1).
	a=noise(det)
	return(a)
	
}






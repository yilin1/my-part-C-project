pseudodata_real=function(i1=0.5,i2=0.5,i3=0.5,i4=0.5,i5=0.5,c1=0.5,c2=0.5,c3=0.5,c4=0.5,c5=0.5,c6=0.5,c7=0.5,c8=0.5,t=50,tby=1,sf=0.1,erv1=1)
{   
	# data is the real data, it is required because we want to know its time points	 
	a=deterministic_real(i1=i1,i2=i2,i3=i3,i4=i4,i5=i5,   c1=c1,c2=c2,c3=c3,c4=c4,c5=c5,c6=c6,c7=c7,c8=c8,t=t,tby=tby)
	psdata=noise_real(det=a,sf=sf,erv1=erv1) 
return (psdata)
}

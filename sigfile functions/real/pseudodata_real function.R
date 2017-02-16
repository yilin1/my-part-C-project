pseudodata_real=function(a0,data)
{   
	# data is the real data, it is required because we want to know its time points	 
  #a0 is 1*14 vector
	a=deterministic_real(data=data,a0=a0[1:13])
	psdata=noise_real(det=a,sf=a0[14]) 
return (psdata)
}

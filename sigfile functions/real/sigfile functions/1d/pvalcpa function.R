# plot of deterministic trajectories when parameter varies
pvalcpa=function(psdata,t=50,tby=1,m,presentdata=TRUE){# psdata is the real data, t and tby are used to generate number of data points using t/tby, m specifies which parameter to focus on. this generates plots for
	# different values of the interested parameter from 0 to 1 (in lines) alongside real data (in dots)

if (m==1){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='i1', ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(i1=p, t=t, tby=tby))}}
	else {
	plot(deterministic(i1=0.1,t=t,tby=tby),type='l',main='i1',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(i1=p, t=t, tby=tby))
	}}	
	}
if (m==2){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='i2',ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(i2=p, t=t, tby=tby))}}
	else {
	plot(deterministic(i2=0.1,t=t,tby=tby),type='l', main='i2',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(i2=p, t=t, tby=tby))
	}}	
	}
if (m==3){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='i3',ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(i3=p, t=t, tby=tby))}}
	else {
	plot(deterministic(i3=0.1,t=t,tby=tby),type='l',ylim=c(0,1), main='i3',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(i3=p, t=t, tby=tby))
	}}	
	}

if (m==4){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='i4',ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(i4=p, t=t, tby=tby))}}
	else {
	plot(deterministic(i4=0.1,t=t,tby=tby),type='l',ylim=c(0,1), main='i4',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(i4=p, t=t, tby=tby))
	}}	
	}

if (m==5){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='i5',ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(i5=p, t=t, tby=tby))}}
	else {
	plot(deterministic(i5=0.1,t=t,tby=tby),type='l',ylim=c(0,1), main='i5',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(i5=p, t=t, tby=tby))
	}}	
	}
	
if (m==6){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='c1',ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(c1=p, t=t, tby=tby))}}
	else {
	plot(deterministic(c1=0.1,t=t,tby=tby),type='l',ylim=c(0,1), main='c1',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(c1=p, t=t, tby=tby))
	}}	
	}
	
if (m==7){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='c2',ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(c2=p, t=t, tby=tby))}}
	else {
	plot(deterministic(c2=0.1,t=t,tby=tby),type='l',ylim=c(0,1), main='c2',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(c2=p, t=t, tby=tby))
	}}	
	}		
	
if (m==8){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='c3',ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(c3=p, t=t, tby=tby))}}
	else {
	plot(deterministic(c3=0.1,t=t,tby=tby),type='l',ylim=c(0,1), main='c3',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(c3=p, t=t, tby=tby))
	}}	
	}
	
if (m==9){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='c4',ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(c4=p, t=t, tby=tby))}}
	else {
	plot(deterministic(c4=0.1,t=t,tby=tby),type='l',ylim=c(0,1), main='c4',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(c4=p, t=t, tby=tby))
	}}	
	}
	
if (m==10){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='c5',ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(c5=p, t=t, tby=tby))}}
	else {
	plot(deterministic(c5=0.1,t=t,tby=tby),type='l',ylim=c(0,1), main='c5',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(c5=p, t=t, tby=tby))
	}}	
	}	

if (m==11){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='c6',ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(c6=p, t=t, tby=tby))}}
	else {
	plot(deterministic(c6=0.1,t=t,tby=tby),type='l',ylim=c(0,1), main='c6',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(c6=p, t=t, tby=tby))
	}}	
	}	

if (m==12){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='c7',ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(c7=p, t=t, tby=tby))}}
	else {
	plot(deterministic(c7=0.1,t=t,tby=tby),type='l',ylim=c(0,1), main='c7',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(c7=p, t=t, tby=tby))
	}}	
	}	

if (m==13){
	if (presentdata==TRUE){
	plot(psdata,col='red',main='c8',ylim=c(0,1))
	 for (p in seq(0.1,0.9,by=0.1)){
	lines(deterministic(c8=p, t=t, tby=tby))}}
	else {
	plot(deterministic(c8=0.1,t=t,tby=tby),type='l',ylim=c(0,1), main='c8',ylab='prediction curves for 0.1-0.9')
	    for (p in seq(0.2,0.9,by=0.1)){
	 lines(deterministic(c8=p, t=t, tby=tby))
	}}	
	}			

}









#if (m==2){
#	if (presentdata==TRUE){
#	plot(psdata,col='red',main='i2', ylim=c(0,1))
#	}
#	for (p in seq(0.1,0.9,by=0.1)){
#	lines(deterministic(i2=p, t=t, tby=tby))
#}}
#if (m==3){
#	if (presentdata==TRUE){
#	plot(psdata,col='red',main='i3', ylim=c(0,1))
#	}
#	for (p in seq(0.1,0.9,by=0.1)){
#	lines(deterministic(i3=p, t=t, tby=tby))
#}}
#if (m==4){
#	if (presentdata==TRUE){
#	plot(psdata,col='red',main='i4', ylim=c(0,1))
#	}
#	for (p in seq(0.1,0.9,by=0.1)){
#	lines(deterministic(i4=p, t=t, tby=tby))
#}}
#if (m==5){
#	if (presentdata==TRUE){
#	plot(psdata,col='red',main='i5', ylim=c(0,1))
#	}
#	for (p in seq(0.1,0.9,by=0.1)){
#	lines(deterministic(i5=p, t=t, tby=tby))
#}}
#if (m==6){
#	if (presentdata==TRUE){
#	plot(psdata,col='red',main='c1', ylim=c(0,1))
#	}
#	for (p in seq(0.1,0.9,by=0.1)){
#	lines(deterministic(c1=p, t=t, tby=tby))
#}}
#if (m==7){
#	if (presentdata==TRUE){
#	plot(psdata,col='red',main='c2', ylim=c(0,1))
#	}
#	for (p in seq(0.1,0.9,by=0.1)){
#	lines(deterministic(c2=p, t=t, tby=tby))
#}}
#if (m==8){
#	if (presentdata==TRUE){
#	plot(psdata,col='red',main='c3', ylim=c(0,1))
#	}
#	for (p in seq(0.1,0.9,by=0.1)){
#	lines(deterministic(c3=p, t=t, tby=tby))
#}}
#if (m==9){
#	if (presentdata==TRUE){
#	plot(psdata,col='red',main='c4', ylim=c(0,1))
#	}
#	for (p in seq(0.1,0.9,by=0.1)){
#	lines(deterministic(c4=p, t=t, tby=tby))
#}}
#if (m==10){
#	if (presentdata==TRUE){
#	plot(psdata,col='red',main='c5', ylim=c(0,1))
#	}
#	for (p in seq(0.1,0.9,by=0.1)){
#	lines(deterministic(c5=p, t=t, tby=tby))
#}}
#if (m==11){
#	if (presentdata==TRUE){
#	plot(psdata,col='red',main='c6', ylim=c(0,1))
#	}
#	for (p in seq(0.1,0.9,by=0.1)){
#	lines(deterministic(c6=p, t=t, tby=tby))
#}}
#if (m==12){
#	if (presentdata==TRUE){
#	plot(psdata,col='red',main='c7', ylim=c(0,1))
#	}
#	for (p in seq(0.1,0.9,by=0.1)){
#	lines(deterministic(c7=p, t=t, tby=tby))
#}}
#if (m==13){
#	if (presentdata==TRUE){
#	plot(psdata,col='red',main='c8', ylim=c(0,1))
#	}
#	for (p in seq(0.1,0.9,by=0.1)){
#	lines(deterministic(c8=p, t=t, tby=tby))
#}}
#}

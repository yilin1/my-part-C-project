plotdata=function(data,patientnum,all=FALSE){
  #this function plots the real data, if you do not input number for the patient, 
  #the assume this function would be followed by lines() command to plot all the patients
  
  if (all==FALSE){
    ymin=min(data$ratio)
    ymax=max(data$ratio)
   plot(data$Month,data$ratio,main=paste("patient",patientnum),xlab='Month',ylab='BCR-ABL ratio',
       ylim=c(ymin,ymax))}
  else {
    # plots all the patients on one plot
    # black is remission
    # red is relapse
    # green is cannotclassify
    rd=dragdata()
    ymin=min(rd$ratio)
    ymax=max(rd$ratio)
    xmin=min(rd$Month)
    xmax=max(rd$Month)
    p1=whichdata(1)
    plot(p1$Month,p1$ratio,main="all patients",xlab='Month',ylab='BCR-ABL ratio',xlim=c(xmin,xmax),ylim=c(ymin,ymax),col=2,type='l')
    for (i in 2:69){
      pi=whichdata(i)
      if (pi$outcome=="remission"){
        lines(pi$Month,pi$ratio,xlab='Month',ylab='BCR-ABL ratio',xlim=c(xmin,xmax),ylim=c(ymin,ymax),col=1)}
      if (pi$outcome=="relapse"){
        lines(pi$Month,pi$ratio,xlab='Month',ylab='BCR-ABL ratio',xlim=c(xmin,xmax),ylim=c(ymin,ymax),col=2)}
      if (pi$outcome=="cannotclassify"){
        lines(pi$Month,pi$ratio,xlab='Month',ylab='BCR-ABL ratio',xlim=c(xmin,xmax),ylim=c(ymin,ymax),col=3)}
    }
  }
  
}

#quantile prediction
qtfitplot14(psdata=p48,mc=mc48a1,last=100,spsize=50)

#4-chaintrace plot
indivpar4chainplot14(mc48a1,mc48a2,mc48a3,mc48a2)

#histogram
allhist14(mc48a1,mc48a2,mc48a1,mc48a2,m=4,last=1000)
indivallhist14(mv1,mc48a2,mc48a3,mc48a2,last=1000)
hist(mc48a1[,4],xlim=c(0,1))

#grplot
indivgrplot14(mc48a1,mc48a2)
graphics.off()

#acf 
indivacf14()
graphics.off()

#after lecture 1 (Bayes method) comment: same mu parameter but differetnt IC. BUNCH OF R  for different ICs, expect to have different ICs but same mu's. 

# mcmc with just 

quartz()
traceplot14(mv1,m=4)

indivtracplot14(mc,last=500)
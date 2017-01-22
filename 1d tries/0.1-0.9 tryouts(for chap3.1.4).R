setwd("/Users/yilinsmac/Desktop")
source("sigfile functions/allhist function.r")
source("sigfile functions/loglkplot function.r")
source("sigfile functions/myloglk function.r") 
source("sigfile functions/plt5 function (function 6 plots on one page)(b4 wk10 meeting).r")
source("sigfile functions/pseudodata function.r")
source('sigfile functions/lattice function.r')
source("sigfile functions/qtfitplot function.r")
source("sigfile functions/qtles function.r")
source("sigfile functions/traceplot function (1-chain).r")
source("sigfile functions/psplusdt function (plot psdata with deterministic on top).r")
source("sigfile functions/acf plot (not self-written function).r")
source("sigfile functions/pvalcpa function.r")
source("sigfile functions/allplots function.r")
source("sigfile functions/grplot function.r")
source("sigfile functions/chainplot function (4-chain).r") 
source("sigfile functions/tra function (just for chap2.3).r")
source("sigfile functions/all tra function (just for chap2.3).r")
source("sigfile functions/lkhistp function (histogram and scaled likelihood on top).r")
source("sigfile functions/lkplot function (not logged).r")
source('sigfile functions/myMCMC function.r')

setwd("/Users/yilinsmac/Desktop/sf=0.01(and variances updated,not logged)")
setwd("/Users/yilinsmac/Desktop/log-likelihood, lkhist, after sf=0.01, erv=1")
#c8
d8={}
for (i in seq(0.1,0.9,by=0.1)){	
d8=cbind(d8,pseudodata(c8=i,sf=0.01,erv1=1))
pdf(paste("c8 =",i,"plt5"))
plt5(d8[,10*i],m=13,v=i,n=3000,sf=0.01,erv1=1)
dev.off()
}

#c7
d7={}
for (i in seq(0.1,0.9,by=0.1)){	
d7=cbind(d7,pseudodata(c7=i,sf=0.01,erv1=1))
pdf(paste("c7 =",i,"plt5"))
plt5(d7[,10*i],m=12,v=i,n=3000, sf=0.01,erv1=1)
dev.off()
}

#c6
d6={}
for (i in seq(0.1,0.9,by=0.1)){	
d6=cbind(d6,pseudodata(c6=i, sf=0.01,erv1=1))
pdf(paste("c6 =",i,"plt5"))
plt5(d6[,10*i],m=11,v=i,n=3000, sf=0.01,erv1=1)
dev.off()
}

#c5
d5={}
for (i in seq(0.1,0.9,by=0.1)){	
d5=cbind(d5,pseudodata(c5=i, sf=0.01,erv1=1))
pdf(paste("c5 =",i,"plt5"))
plt5(d5[,10*i],m=10,v=i,n=3000, sf=0.01,erv1=1)
dev.off()
}

#c4
d4={}
for (i in seq(0.1,0.9,by=0.1)){	
d4=cbind(d4,pseudodata(c4=i, sf=0.01,erv1=1))
pdf(paste("c4 =",i,"plt5"))
plt5(d4[,10*i],m=9,v=i,n=3000, sf=0.01,erv1=1)
dev.off()
}

#c3
d3={}
for (i in seq(0.1,0.9,by=0.1)){	
d3=cbind(d3,pseudodata(c3=i, sf=0.01,erv1=1))
pdf(paste("c3 =",i,"plt5"))
plt5(d3[,10*i],m=8,v=i,n=3000, sf=0.01,erv1=1)
dev.off()
}

#c2
d2={}
for (i in seq(0.1,0.9,by=0.1)){	
d2=cbind(d2,pseudodata(c2=i, sf=0.01,erv1=1))
pdf(paste("c2 =",i,"plt5"))
plt5(d2[,10*i],m=7,v=i,n=3000, sf=0.01,erv1=1)
dev.off()
}

#c1
d1={}
for (i in seq(0.1,0.9,by=0.1)){	
d1=cbind(d1,pseudodata(c1=i, sf=0.01,erv1=1))
pdf(paste("c1 =",i,"plt5"))
plt5(d1[,10*i],m=6,v=i,n=3000, sf=0.01,erv1=1)
dev.off()
}

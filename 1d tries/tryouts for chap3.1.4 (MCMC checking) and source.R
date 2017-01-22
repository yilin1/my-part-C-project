setwd("/Users/yilinsmac/Desktop")
# source("wk10 meeting/codes i wrote b4 wk10 meeting/function 6 plots on one page(b4 wk10 meeting).r")

# source("wk10 meeting/codes i wrote b4 wk10 meeting/deterministic individuals and ratio function(b4 wk10 meeting).r")

# source("wk10 meeting/codes i wrote b4 wk10 meeting/fit to data quantiles(正本)(b4 wk10 meeting).r")

# source("github170103/function deterministic, noise, pseudodata, myloglk & myMCMC (after sarah).r")
# source("github170103/functions for other convergence plots MCMC (b4 wk8 meeting).r")
# source("github170103/functions for plots (b4 wk7 meet).r")
setwd("/Users/yilinsmac/Desktop")
source("sigfile functions/allhist function.r")
source("sigfile functions/loglkplot function.r")
source("sigfile functions/myloglk function.r") 
source("sigfile functions/plt5 function (function 6 plots on one page)(b4 wk10 meeting).r")
source("sigfile functions/pseudodata function.r")
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
source("sigfile functions/noise function.r")

# par(mfrow=c(2,3))
#only consider c's, not the initial conditions 1-8 is c1-c8, not starting from i1-i5. so m starts from 6, when d starts from d12.

setwd("/Users/yilinsmac/Desktop/plots for chap3.1.4, using not-logged likelihood")
# c1=0.2
d12=pseudodata(c1=0.2)
pdf("d12plt5.pdf")
plt5(d12,m=6,v=0.2)
dev.off()

c12a=myMCMC(d12,m=6,n=3000)
c12b=myMCMC(d12,m=6,n=3000)
pdf("d12grp")
grplot(c12a,c12b)
dev.off()

#c1=0.5
d15=pseudodata(c1=0.5)
pdf("d15plt5.pdf")
plt5(d15,m=6,v=0.5)
dev.off()

c15a=myMCMC(d15,m=6,n=3000)
c15b=myMCMC(d15,m=6,n=3000)
pdf("d15grp")
grplot(c15a,c15b)
dev.off()

#c1=0.8
d18=pseudodata(c1=0.8,sf=0.01,erv1=1)
pdf("d18plt5.pdf")
plt5(d18,m=6,v=0.8)
dev.off()

c18a=myMCMC(d18,m=6,n=3000)
c18b=myMCMC(d18,m=6,n=3000)
pdf("d18grp")
grplot(c18a,c18b)
dev.off()

# c2=0.2
d22=pseudodata(c2=0.2)
pdf("d22plt5.pdf")
plt5(d22,m=7,v=0.2)
dev.off()

c22a=myMCMC(d22,m=7,n=3000)
c22b=myMCMC(d22,m=7,n=3000)
pdf("d22grp")
grplot(c22a,c22b)
dev.off()

#c2=0.5
d25=pseudodata(c2=0.5)
pdf("d25plt5.pdf")
plt5(d25,m=7,v=0.5)
dev.off()

c25a=myMCMC(d25,m=7,n=3000)
c25b=myMCMC(d25,m=7,n=3000)
pdf("d25grp")
grplot(c25a,c25b)
dev.off()

#c2=0.8
d28=pseudodata(c2=0.8)
pdf("d28plt5.pdf")
plt5(d28,m=7,v=0.8)
dev.off()

c28a=myMCMC(d28,m=7,n=3000)
c28b=myMCMC(d28,m=7,n=3000)
pdf("d28grp")
grplot(c28a,c28b)
dev.off()

# c3=0.2
d32=pseudodata(c3=0.2)
pdf("d32plt5.pdf")
plt5(d32,m=8,v=0.2)
dev.off()

c32a=myMCMC(d32,m=8,n=3000)
c32b=myMCMC(d32,m=8,n=3000)
pdf("d32grp")
grplot(c32a,c32b)
dev.off()

#c3=0.5
d35=pseudodata(c3=0.5)
pdf("d35plt5.pdf")
plt5(d35,m=8,v=0.5)
dev.off()

c35a=myMCMC(d35,m=8,n=3000)
c35b=myMCMC(d35,m=8,n=3000)
pdf("d35grp")
grplot(c35a,c35b)
dev.off()

#c3=0.8
d38=pseudodata(c3=0.8)
pdf("d38plt5.pdf")
plt5(d38,m=8,v=0.8)
dev.off()

c38a=myMCMC(d38,m=8,n=3000)
c38b=myMCMC(d38,m=8,n=3000)
pdf("d38grp")
grplot(c38a,c38b)
dev.off()

# c4=0.2
d42=pseudodata(c4=0.2)
pdf("d42plt5.pdf")
plt5(d42,m=9,v=0.2)
dev.off()

c42a=myMCMC(d42,m=9,n=3000)
c42b=myMCMC(d42,m=9,n=3000)
pdf("d42grp")
grplot(c42a,c42b)
dev.off()

#c4=0.5
d45=pseudodata(c4=0.5)
pdf("d45plt5.pdf")
plt5(d45,m=9,v=0.5)
dev.off()

c45a=myMCMC(d45,m=9,n=3000)
c45b=myMCMC(d45,m=9,n=3000)
pdf("d45grp")
grplot(c45a,c45b)
dev.off()

#c4=0.8
d48=pseudodata(c4=0.8)
pdf("d48plt5.pdf")
plt5(d48,m=9,v=0.8,n=50)
dev.off()

c48a=myMCMC(d48,m=9,n=3000)
c48b=myMCMC(d48,m=9,n=3000)
pdf("d48grp")
grplot(c48a,c48b)
dev.off()

# c5=0.2
d52=pseudodata(c5=0.2)
pdf("d52plt5.pdf")
plt5(d52,m=10,v=0.2)
dev.off()

c52a=myMCMC(d52,m=10,n=3000)
c52b=myMCMC(d52,m=10,n=3000)
pdf("d52grp")
grplot(c52a,c52b)
dev.off()

#c5=0.5
d55=pseudodata(c5=0.5)
pdf("d55plt5.pdf")
plt5(d55,m=10,v=0.5)
dev.off()

c55a=myMCMC(d55,m=10,n=3000)
c55b=myMCMC(d55,m=10,n=3000)
pdf("d55grp")
grplot(c55a,c55b)
dev.off()

#c5=0.8
d58=pseudodata(c5=0.8)
pdf("d58plt5.pdf")
plt5(d58,m=10,v=0.8)
dev.off()

c58a=myMCMC(d58,m=10,n=3000)
c58b=myMCMC(d58,m=10,n=3000)
pdf("d58grp")
grplot(c58a,c58b)
dev.off()

# c6=0.2
d62=pseudodata(c6=0.2)
pdf("d62plt5.pdf")
plt5(d62,m=11,v=0.2)
dev.off()

c62a=myMCMC(d62,m=11,n=3000)
c62b=myMCMC(d62,m=11,n=3000)
pdf("d62grp")
grplot(c62a,c62b)
dev.off()

#c6=0.5
d65=pseudodata(c6=0.5)
pdf("d65plt5.pdf")
plt5(d65,m=11,v=0.5)
dev.off()

c65a=myMCMC(d65,m=11,n=3000)
c65b=myMCMC(d65,m=11,n=3000)
pdf("d65grp")
grplot(c65a,c65b)
dev.off()

#c6=0.8
d68=pseudodata(c6=0.8)
pdf("d68plt5.pdf")
plt5(d68,m=11,v=0.8)
dev.off()

c68a=myMCMC(d68,m=11,n=3000)
c68b=myMCMC(d68,m=11,n=3000)
pdf("d68grp")
grplot(c68a,c68b)
dev.off()

# c7=0.2
d72=pseudodata(c7=0.2)
pdf("d72plt5.pdf")
plt5(d72,m=12,v=0.2)
dev.off()

c72a=myMCMC(d72,m=12,n=3000)
c72b=myMCMC(d72,m=12,n=3000)
pdf("d72grp")
grplot(c72a,c72b)
dev.off()

#c7=0.5
d75=pseudodata(c7=0.5)
pdf("d75plt5.pdf")
plt5(d75,m=12,v=0.5)
dev.off()

c75a=myMCMC(d75,m=12,n=3000)
c75b=myMCMC(d75,m=12,n=3000)
pdf("d75grp")
grplot(c75a,c75b)
dev.off()

#c7=0.8
d78=pseudodata(c7=0.8)
pdf("d78plt5.pdf")
plt5(d78,m=12,v=0.8)
dev.off()

c78a=myMCMC(d78,m=12,n=3000)
c78b=myMCMC(d78,m=12,n=3000)
pdf("d78grp")
grplot(c78a,c78b)
dev.off()

# c8=0.2
d82=pseudodata(c8=0.2)
pdf("d82plt5.pdf")
plt5(d82,m=13,v=0.2)
dev.off()

c82a=myMCMC(d82,m=13,n=3000)
c82b=myMCMC(d82,m=13,n=3000)
pdf("d82grp")
grplot(c82a,c82b)
dev.off()

#c8=0.5
d85=pseudodata(c8=0.5)
pdf("d85plt5.pdf")
plt5(d85,m=13,v=0.5,n=3000)
dev.off()

c85a=myMCMC(d85,m=13,n=3000)
c85b=myMCMC(d85,m=13,n=3000)
pdf("d85grp.pdf")
grplot(c85a,c85b)
dev.off()

#c8=0.8
d88=pseudodata(c8=0.8)
pdf("d88plt5.pdf")
plt5(d88,m=13,v=0.8,n=3000)
dev.off()

c88a=myMCMC(d88,m=13,n=3000)
c88b=myMCMC(d88,m=13,n=3000)
pdf("d88grp.pdf")
grplot(c88a,c88b)
dev.off()

setwd("/Users/yilinsmac/Desktop")

setwd("/Users/yilinsmac/Desktop/c8")
d8={}
for (i in seq(0.1,0.9,by=0.1)){	
d8=cbind(d8,pseudodata(c8=i))
pdf(paste("c8 =",i,"plt5"))
plt5(d8[,10*i],m=13,v=i,n=3000)
dev.off()
}








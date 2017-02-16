histbins=function(mc1,mc2,m){
  #mc1&2 are lattices.
  library(mcmcse)
  es=ess(mc1)[m]
  a=hist(mc1[,m],breaks = sqrt(es))
  b=hist(mc2[,m],breaks =a$breaks)
  plot(a$mids,a$counts,type='l',main=paste("m=",m))
  lines(b$mids,b$counts,col=2)
}

#for (i in 1:14){
#histocp(mc1,mc2,m=i)}

#for (i in 1:14){
#histbins(mc1,mc2,i)
#}
#histbins(mc1,mc2,4)
#histbins(mc1,mc2,10)
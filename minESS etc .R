as.mcmc
library(coda)
effectiveSize(as.mcmc(realtest14))
effectiveSize(realtest15)
autocorr.plot(realtest14)

?mcmcse
?minESS
?ess
install.packages("mcmcse")
library(mcmcse)
install.packages("LaplacesDemon")
library(LaplacesDemon)

burnin(realtest14[,3],method="KS")
minESS(p=14)

IAT(tail(realtest14[,12],500))
IAT(realtest14[,5])
ess(realtest14) # conservative choose the smallest one...
multiESS(realtest14)

for (i in 1:14){
print(i)
  print(mcse(realtest14[,i]))
}

mcse.mat(realtest14) #consistent result with mcse

mcse.multi(realtest14) #multivariate sd??

typeof(realtest14)
mode({})
mode(c())
mode(rs)
mode(rss)
mode(realtest14)
storage.mode(realtest14)
storage.mode(c())
storage.mode({})
storage.mode(rs)

#source("/Users/yilinsmac/Desktop/sigfile functions/14d/traceplot14 function (1-chain).r")
# single chain trace plot
traceplot14=function(mc,m,last=500){ 
# mc is the output of a 14d MCMC function,
# its mth column is plotted, i.e. the column corresponding the parameter indexed m.
# plot the last 'last' draws.
par(cex.sub=0.5)
	plot(tail(mc[,m],last),type='l',xlab="MCMC iteration", ylab="parameter values", main="trace plot",sub=paste('m=',m,', last',last,'iterates from each',dim(mc)[1],'draws'),ylim=c(0,1))
}

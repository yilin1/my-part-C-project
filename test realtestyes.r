deterdata=pseudodata_real(c1=0.8,c2=0.7,c4=0.6,c5=0.6,sf=0.01)
erv2=rep(0.01,14)
erv2[14]=0
test12=myMCMC14a_vtest_evk_realtestyes(data=deterdata,v=c(6,7,9,10),k=10,erv1=1,erv2=erv2,tby=1,n=3000)
test22=myMCMC14a_vtest_evk_realtestyes(data=deterdata,v=c(6,7,9,10),k=10,erv1=1,erv2=erv2,tby=1,n=3000)
test32=myMCMC14a_vtest_evk_realtestyes(data=deterdata,v=c(6,7,9,10),k=10,erv1=1,erv2=erv2,tby=1,n=5000)
test42=myMCMC14a_vtest_evk_realtestyes(data=deterdata,v=c(6,7,9,10),k=10,erv1=1,erv2=erv2,tby=1,n=3000)

tail(test12,5)

traceplot14(mc=test12,m=7,last=300)

sighist14_lines(test12,m=7,last=300)
cummean(test12,test22,test32,test42,m=7)
cummean(test12,m=7)

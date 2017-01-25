psdata=pseudodata(c4=0.8,c8=0.6)
d=2
t=50
tby=1
sf=0.01
erv1=1
erv2=0.0001
n=30
H=2
MCitr=1
MCitr <= H
MCitr=MCitr+1
MCitr

mc86=myMCMC2d(psdata) #this works well

psdata=pseudodata(c4=0.1,c8=0.1)# q: need to update noise function! do i?
mc11=myMCMC2d(psdata,n=10000) # 0.7929862, 0.252367
mc11a=myMCMC2d(psdata,n=50000) # 0.192082, 0.0962274


psdata=pseudodata(c4=0.5,c8=0.1)
mc51=myMCMC2d(psdata,n=300) # not good, go pass0.4-0.5 pass then go to 0.9 for c4; c8 decrease from 0.9 to 0.3 then keep on rejecting...(0.42, 0.89-0.99, 0.35)
mc51a=myMCMC2d(psdata,n=10000) # (0.306, 0.111)
mc51b=myMCMC2d(psdata,n=50000) # (0.366, 0.125)
plot(tail(mc51b),type='l',xlim=c(0,1),ylim=c(0,1))

a=deterministic_real()
a[2,][1]
r+a[2,][1]<=0


plot(noise_real(a))
lines(a$Month,a$predictedratio)

plot(p2$Month,p2$ratio)

p=pseudodata_real()
plot(p$Month,p$predictedratio)
lines(a)
plot.new()
plot(noise_real(a))

plot(data$Month,data$ratio)
qtfitplot14_real(data=p2,predict=FALSE,mc= mrealp2)

p3=whichdata(3)
p3
p4=whichdata(4)
p4
data=p4
plotrealdata(p4)

mcp4=myMCMC14a_vtest_evk_real(data=p4,k=10,v=1:13,n=2000,erv2=erv2)
qtfitplot14_real(data=p4,predict=FALSE,mc= mcp4,last=100,spsize=50)
indivtracplot14(mc=mcp4,last=100)
tail(mcp4)
dim(mcp4)

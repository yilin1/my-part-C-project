setwd("/Users/yilinsmac/Desktop/chap3.1.4 scenarios")

#c7=0.9

d79=pseudodata(c7=0.9)

pdf("c7=0.9 loglkplot.pdf")
loglkplot(m=12,psdata=d79)
abline(v=0.9)
dev.off()

pdf('c7=0.9 4-chain plot.pdf')
mc=chainplot(psdata=d79,m=12)
dev.off()

pdf('c7=0.9 mclkhistp.pdf')
mclkhistp(mchains=mc,l=500,m=12,psdata=d79)
dev.off()

for (i in seq(1,4,by=1)){
pdf(paste('c7=0.9 acf',i,'.pdf'))
acf(mc[,i])
dev.off()
}

pdf('c7=0.9 grplot.pdf')
grplot(a1=mc[,2],a2=mc[,4])
dev.off()

pdf('c7=0.9 mcqtfitplot.pdf')
mcqtfitplot(oneMchain=mc[,3],psdata=d79,m=12)
dev.off()

#
d33=pseudodata(c3=0.3)

pdf("c3=0.3 loglkplot.pdf")
loglkplot(m=8,psdata=d33)
abline(v=0.3)
dev.off()

pdf('c3=0.3 4-chain plot.pdf')
mc=chainplot(psdata=d33,m=8)
dev.off()

pdf('c3=0.3 mclkhistp.pdf')
mclkhistp(mchains=mc,l=500,m=8,psdata=d33)
dev.off()

for (i in seq(1,4,by=1)){
pdf(paste('c3=0.3 acf',i,'.pdf'))
acf(mc[,i])
dev.off()
}

pdf('c3=0.3 grplot.pdf')
grplot(a1=mc[,2],a2=mc[,4])
dev.off()

pdf('c3=0.3 mcqtfitplot.pdf')
mcqtfitplot(oneMchain=mc[,3],psdata=d33,m=8)
dev.off()

#c3=0.9
d39=pseudodata(c3=0.9)

pdf("c3=0.9 loglkplot.pdf")
loglkplot(m=8,psdata=d39)
abline(v=0.9)
dev.off()

pdf('c3=0.9 4-chain plot.pdf')
mc=chainplot(psdata=d39,m=8)
dev.off()

pdf('c3=0.9 mclkhistp.pdf')
mclkhistp(mchains=mc,l=500,m=8,psdata=d39)
dev.off()

for (i in seq(1,4,by=1)){
pdf(paste('c3=0.9 acf',i,'.pdf'))
acf(mc[,i])
dev.off()
}

pdf('c3=0.9 grplot.pdf')
grplot(a1=mc[,2],a2=mc[,4])
dev.off()

pdf('c3=0.9 mcqtfitplot.pdf')
mcqtfitplot(oneMchain=mc[,3],psdata=d39,m=8)
dev.off()

pdf("c3=0.9 pvalcpa.pdf")
pvalcpa(d39,m=8)
dev.off()

pdf("c3=0.3 pvalcpa.pdf")
pvalcpa(d33,m=8)
dev.off()

#
d59=pseudodata(c5=0.9)

pdf("c5=0.9 loglkplot.pdf")
loglkplot(m=10,psdata=d59)
abline(v=0.9)
dev.off()

pdf('c5=0.9 4-chain plot.pdf')
mc=chainplot(psdata=d59,m=10)
dev.off()

pdf('c5=0.9 mclkhistp.pdf')
mclkhistp(mchains=mc,l=500,m=10,psdata=d59)
dev.off()

for (i in seq(1,4,by=1)){
pdf(paste('c5=0.9 acf',i,'.pdf'))
acf(mc[,i])
dev.off()
}

pdf('c5=0.9 grplot.pdf')
grplot(a1=mc[,2],a2=mc[,4])
dev.off()

pdf('c5=0.9 mcqtfitplot.pdf')
mcqtfitplot(oneMchain=mc[,3],psdata=d59,m=10)
dev.off()

#3pdf("c5=0.9 pvalcpa.pdf")
#pvalcpa(d59,m=10)
#dev.off()

#pdf("c3=0.3 pvalcpa.pdf")
#pvalcpa(d33,m=8)
#dev.off()

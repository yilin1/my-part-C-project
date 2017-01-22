par(bg='white',mfrow=c(1,2))
plot(d28,bty='o',main='sd',cex=0.5,cex.axis=1.2,cex.lab=0.5,cex.main=1.5)
plot(d28,bty='o',,main='sd',cex=1)
lines(d28,lty='dotdash')
# cex sets the size of the dots
# cex.axis sets the number on both axises
# cex.lab sets the label on both axises
# cex.main sets the font of the title

par(new=TRUE)
plot(d38,cex=1)
legend(x=40,y=0.2,'dfs',)
# draw on the same window, label overlaps, defn not.

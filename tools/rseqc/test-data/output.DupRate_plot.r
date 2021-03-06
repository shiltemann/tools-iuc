pdf('output.DupRate_plot.pdf')
par(mar=c(5,4,4,5),las=0)
seq_occ=c(1)
seq_uniqRead=c(40)
pos_occ=c(1)
pos_uniqRead=c(40)
plot(pos_occ,log10(pos_uniqRead),ylab='Number of Reads (log10)',xlab='Occurrence of read',pch=4,cex=0.8,col='blue',xlim=c(1,500),yaxt='n')
points(seq_occ,log10(seq_uniqRead),pch=20,cex=0.8,col='red')
ym=floor(max(log10(pos_uniqRead)))
legend(300,ym,legend=c('Sequence-based','Mapping-based'),col=c('blue','red'),pch=c(4,20))
axis(side=2,at=0:ym,labels=0:ym)
axis(side=4,at=c(log10(pos_uniqRead[1]),log10(pos_uniqRead[2]),log10(pos_uniqRead[3]),log10(pos_uniqRead[4])), labels=c(round(pos_uniqRead[1]*100/sum(pos_uniqRead*pos_occ)),round(pos_uniqRead[2]*100/sum(pos_uniqRead*pos_occ)),round(pos_uniqRead[3]*100/sum(pos_uniqRead*pos_occ)),round(pos_uniqRead[4]*100/sum(pos_uniqRead*pos_occ))))
mtext(4, text = "Reads %", line = 2)
dev.off()

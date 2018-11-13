library(IRanges)
library(GenomicRanges)

ir1<-IRanges(start = c(1,3,5),end = c(3,5,7))
names(ir1)<-1:3
ir1

ir2<-IRanges(start = c(1,3,5),width = 5)


x<-paste("w",1:3,sep = "")
names(ir2)<-x

ir2


gr <- GRanges(seqnames = "chr1", strand = c("+", "-", "+"), ranges = ir1)
gr
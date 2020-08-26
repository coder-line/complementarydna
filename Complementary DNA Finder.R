#complementary DNA "TGCGGCAGCGGCCG"
#https://www.youtube.com/watch?v=jm2j0P1hmEE&list=LL1bQMHHHX1GTiTAyQ2pX-Pw&index=16&t=0s
DNAseq <-function(x){
  basepair=c("A","T","G","C")
  abc<-unlist(strsplit(toupper(x), NULL))
  paste(unlist(lapply(abc, function(DNAseq){
    if(DNAseq=="A") stringss<-"T"
    if(DNAseq=="T") stringss<-"A"
    if(DNAseq=="G") stringss<-"C"
    if(DNAseq=="C") stringss<-"G"
    if(!DNAseq%in%basepair) stringss<-"N"
  return(stringss)
  })), collapse = "")
}
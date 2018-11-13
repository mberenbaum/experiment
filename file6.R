set.seed(1)

population<-read.csv("femaleControlsPopulation.csv")%>%unlist
obs<-experiment%>%mean()-control%>%mean()

n<-10000
control<-vector("numeric",n)

for (i in 1:n) {
  control[i]<-sample(population,5)%>%mean()
  #val<-population%>%mean()-control%>%mean()
  #nulls[i]<-ifelse(val>-1|val<1,0,1)
  
  
}
x<-read.csv("femaleMiceWeights.csv")

control<-filter(x,Diet=="chow")%>%
  select(Bodyweight) %>% unlist 

experiment<-filter(x,Diet=="hf")%>%
  select(Bodyweight) %>% unlist


population<-read.csv("femaleControlsPopulation.csv")%>%unlist
obs<-experiment%>%mean()-control%>%mean()

n<-10000
nulls<-vector("numeric",n)
for (i in 1:n) {
  control<-sample(population,12)
  treatment<-sample(population,12)
  nulls[i]<-treatment%>%mean()-control%>%mean()
}


mean(nulls>obs)


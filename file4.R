xc<-x%>%mean()
set.seed(5)
xs<-sample(x,5) %>%mean()

abs(xc-xs)
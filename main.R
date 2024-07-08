library(tidyverse)

p<-
mpg%>%
ggplot(aes(displ,hwy))+
geom_point()

print(p)
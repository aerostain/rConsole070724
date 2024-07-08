library(tidyverse)
library(ggdark)

p<-
mpg%>%
ggplot(aes(displ,hwy))+
geom_jitter()+
geom_smooth()+
dark_mode()
print(p)

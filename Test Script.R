library(tidyverse)
library(ggplot2)
mpg
#plot mpg with ggplot
ggplot(mpg, aes(x = displ,y = hwy)) +
  geom_point()

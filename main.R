library(tidyverse)
library(ggdark)
library(magrittr)

p <-
  mpg %>%
  ggplot(aes(displ, hwy)) +
  geom_jitter() +
  geom_smooth() +
  dark_mode()
print(p)

mpg %>% str()
mpg$year %<>% as.factor()

position_nudge(x = -.2, y = 0)

mpg %>%
  ggplot(aes(year, displ, col = year)) +
  geom_jitter(width = .05, alpha = .2) +
  geom_boxplot(
    width = .1, alpha = .2,
    position = position_nudge(x = -.2, y = 0)
  ) +
  stat_summary(
    geom = "errorbar", fun.data = mean_cl_normal,
    width = .05, position = position_nudge(x = .2, y = 0)
  ) +
  dark_mode() 

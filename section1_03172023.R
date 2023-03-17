library(tidyverse)
library(dslabs)
data(murders)
library(ggplot2)

# This is first r file of first repository in git
# To make sync for the first time

head(murders)
tail(murders)
murders_rate <- murders %>% mutate(rate = total/population*100000) %>%
  ggplot(aes(state, rate)) + 
  geom_point()
murders_rate  

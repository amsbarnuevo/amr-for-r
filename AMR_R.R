library(dplyr) # part of tidyverse
library(magrittr)
library(ggplot2) # part of tidyverse
library(AMR) # this package
library(cleaner) # to create frequency tables
library(readr)
library(xlsx)


w_data <- read.csv("data_samples/W0123PHL_dmc.csv", encoding = "UTF-8")

data <- w_data %>%
  # get microbial ID based on given organism
  mutate(mo = as.mo(ORGANISM)) %>%
  # transform everything to the new `sir` class
  mutate(across(AMK_ND30:VOR_ND1, as.disk)) %>%
  mutate(across(AMK_NM:VOR_NM, as.mic)) %>%
  mutate_at(vars(AMK_ND30:VOR_NM), as.sir)
 
  

write.csv(data, file="data_samples/tranformed.csv")
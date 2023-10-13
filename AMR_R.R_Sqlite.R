library(dplyr) # part of tidyverse
library(magrittr)
library(ggplot2) # part of tidyverse
library(AMR) # this package
library(cleaner) # to create frequency tables
library(readr)
library(RSQLite)
library(DBI)


filename <- "D:/ALLYSA FILE/2023/DMU Files/AMR for R/data samples/W0123PHL_DMC_B.sqlite"
sqlite.driver <- dbDriver("SQLite")
db <- dbConnect(sqlite.driver,
                dbname = filename)

dbListTables(db)
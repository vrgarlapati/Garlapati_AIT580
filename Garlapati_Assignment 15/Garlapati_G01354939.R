library("selectr")
library("xml2")
library("rvest")

url <- "https://nytimes.com"
webpage <- read_html(url)

library(jsonlite)
library(dplyr)

Nytimes <- fromJSON("https://api.nytimes.com/svc/topstories/v2/us.json?api-key=Scz8UJ7pKtRfGDpP7Gvg27VMmCC74GlA", flatten = TRUE) %>% 
  data.frame()

head(Nytimes)
colnames(Nytimes)
result=Nytimes[,c(8,14,15,16)]

write.csv(result, "D:/GMU Student/Github/Garlapati_AIT580/Garlapati_Assignment 15/res.csv")

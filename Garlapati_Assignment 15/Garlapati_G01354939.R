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

# write.csv(result, "https://github.com/vrgarlapati/Garlapati_AIT580/blob/main/Garlapati_Assignment%2015/res.csv")

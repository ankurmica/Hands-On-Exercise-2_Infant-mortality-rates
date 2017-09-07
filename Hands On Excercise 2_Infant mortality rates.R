
#1
#Download a csv file from 
#https://data.oecd.org/healthstat/infant-mortality-rates.htm and 
#read the csv file and remove the last column

df <- read.table("C:\\YYYY\\AMMA 2017\\Practice Assignments\\DP_LIVE_08072017224217375.csv", 
                 sep = ",")
str(df)
View(df)
df1<-df
View(df1)
df1<-df[,-8]

#2
#Read 2 table from html page
#https://en.wikipedia.org/wiki/India%E2%80%93Pakistan_cricket_rivalry 
#and find number of ODI Matches won by India
install.packages("XML")
install.packages("RCurl")
library(RCurl)
library(XML)
setwd
#read.csv("")
pages <- getURL("https://en.wikipedia.org/wiki/India%E2%80%93Pakistan_cricket_rivalry")
df_overall_matches <- readHTMLTable(pages, header=T, which=2, as.data.frame = TRUE)
odi_won_india <- df_overall_matches[3,3]
odi_won_india
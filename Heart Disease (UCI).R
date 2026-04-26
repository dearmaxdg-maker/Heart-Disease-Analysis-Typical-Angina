library(tidyverse)
library(lubridate)

df_brent <- read.csv(choose.files())
View(df_brent)
df_change <- read.csv(choose.files())
View(df_change)
df_change <- read.csv(
  choose.files(),
  stringsAsFactors = FALSE,
  fileEncoding = "UTF-8")

  
  df_prezzi <- read.csv (choose.files())
  View (df_prezzi)
  library(readr)
  
  df_prezzi <- read_csv2(choose.files())
  View (df_prezzi)
 
  
  
  problems(df_prezzi)
  glimpse(df_prezzi)
  names(df_prezzi)
   
  install.packages("readxl")
  
  library(readxl)
  
  df_prezzi <- read_excel(choose.files())
  
  glimpse(df_prezzi)
  head(df_prezzi)
  
  save(df_brent, df_change, df_prezzi, file = "dati.RData")
  
  View (df_change)
  install.packages("readxl")
  library (readxl)
  
  
  
  glimpse (dati.RData)
  library(tidyverse)
  read_(choose.files())
  read_xls(cho
  library (readxl)
readxl

View (df_change)
df_change <- readxl "C:\Users\Massi\Dropbox\PC\Desktop\Data Analist (fai da te)\Corso 8\capstone1\Nuova cartella\EUR_USD Dati Storici(3).xlsx"()

df_change <- read_excel(choose.files())
View(df_change)
str (df_change)
str (df_brent)
df_change$Data <- as.Date(df_change$Data, format = "%d.%m.%Y")
df_brent$observation_date <- as.Date(df_brent$observation_date, format = "%Y-%m-%d")

df_change <- df_change %>% rename(date = Data)
df_brent  <- df_brent %>% rename(date = observation_date)+
  
df_change$Date <- as.Date(df_change$Date, format = "%d.%m.%Y")
df_brent$observation_date <- as.Date(df_brent$observation_date, format = "%Y-%m-%d")
  
names(df_change)
df_change[[1]] <- as.Date(df_change[[1]], "%d.%m.%Y")
head(df_change[[1]])
df_brent[[1]] <- as.Date(df_brent[[1]], "%d.%m.%Y")
head (df_brent)
df_brent[[1]] <- as.Date(df_brent[[1]])
head(df_brent[[1]])
head(df_brent[[1]])

df_brent[[1]] <- as.Date(df_brent[[1]])
head(df_brent[[1]])
class(df_brent[[1]])
class(df_change[[1]])
head(df_change[[1]])

df_change <- df_change[order(df_change[[1]]), ]
head(df_change[[1]])

names(df_brent)[1] <- "date"
names(df_change)[1] <- "date"
df_brent_euro <- merge(df_brent, df_change, by = "date")

head(df_brent_euro)

df_brent_euro$brent_euro <- df_brent_euro$DCOILBRENTEU / df_brent_eur
View(df_brent_euro)

class(df_prezzi[[1]])
df_prezzi[[1]] <- as.Date(df_prezzi[[1]])
class(df_prezzi[[1]])
head(df_prezzi[[1]])
df_prezzi <- df_prezzi[
  df_prezzi[[1]] >= as.Date("2019-01-01") &
    df_prezzi[[1]] <= as.Date("2023-12-31"),
]

range(df_prezzi[[1]])

df_prezzi <- df_prezzi[
  df_prezzi[[1]] >= as.Date("2019-01-01") &
    df_prezzi[[1]] <= as.Date("2023-12-31"),
]

head(df_prezzi[[1]])

df_brent_euro$week <- as.Date(cut(df_brent_euro[[1]], breaks = "week"))
df_brent_weekly <- aggregate(brent_euro ~ week, data = df_brent_euro, FUN = mean)

names(df_brent_weekly)[1] <- "date"

df_finale <- merge(df_brent_weekly, df_prezzi, by = "date")

names(df_brent_weekly)
names(df_prezzi)

names(df_prezzi)[1] <- "date"
df_finale <- merge(df_brent_weekly, df_prezzi, by = "date")

head(df_finale)
names(df_finale)

class(df_prezzi$date)
class(df_brent_weekly$date)

df_finale$brent_litro <- df_finale$brent_euro / 159


head(df_finale[, c("brent_litro", "gasolio_litro", "benzina_litro")])


plot(df_finale$date, df_finale$brent_litro, type = "l", col = "blue")
lines(df_finale$date, df_finale$gasolio_litro, col = "red")

df_finale$brent_lag1 <- c(NA, df_finale$brent_litro[-nrow(df_finale)])
plot(df_finale$date, df_finale$gasolio_litro,
     type = "l", col = "red", lwd = 2)

lines(df_finale$date, df_finale$brent_litro,
      col = "blue", lwd = 2)

lines(df_finale$date, df_finale$brent_lag1,
      col = "green", lwd = 2)

plot(df_finale$date, df_finale$gasolio_litro,
     type = "l", col = "red", lwd = 2,
     ylim = c(0, 1.4))

lines(df_finale$date, df_finale$brent_litro,
      col = "blue", lwd = 2)

lines(df_finale$date, df_finale$brent_lag1,
      col = "green", lwd = 2)

save(df_finale, file = "df_finale.RData")

write.csv(df_finale, "df_finale.csv", row.names = FALSE)
df_finale <- read.csv("df_finale.csv")
write.csv(df_finale, "df_finale.csv", row.names = FALSE)
write.csv2(df_finale, "df_finale.csv", row.names = FALSE)

df_brent_euro %>%
  filter(DATA >= as.Date("2020-03-08") & DATA <= as.Date("2020-03-10")) %>%
  select(DATA, week)

library(dplyr)

df_brent_euro %>%
  filter(DATA >= as.Date("2020-03-08") & DATA <= as.Date("2020-03-10")) %>%
  select(DATA, week)

ls()
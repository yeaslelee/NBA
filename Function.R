NBA = read.csv("/Users/yeaslelee/Documents/R/Seasons_Stats_NBA.csv")

nba_best <- function(NBA, y){
  tidyverse::NBA %>%
    filter(Year== y)%>%
    select(Year, Player, PTS)%>%
    arrange(desc(PTS)) %>%
    head(1)
}


nba_oldest <- function(NBA, y){
  tidyverse::NBA %>%
    filter(Year== y)%>%
    select(Year, Player, Age)%>%
    arrange(desc(Age)) %>%
    head(1)
}


nba_numeric <- function(NBA, y){
  tidyverse::NBA %>%
    filter(Year== y)%>%
    select_if(is.numeric)%>%
    select_if(~!all(is.na(.)))%>%
    cor()
}


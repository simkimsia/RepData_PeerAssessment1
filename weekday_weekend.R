## dataset is a dataframe with the columns steps, date, interval
## this function will add a new column called weekday_or_weekend
add_weekday_weekend <- function(dataset) {
  ## convert date to Date class
  dataset$date <- as.character(dataset$date)
  dataset$date <- as.Date(dataset$date, format = "\"%Y-%m-%d\"")
  ## add another column indicating the days
  dataset$weekday_or_weekend <- weekdays(dataset$date)

  return (dataset)
} 

get_weekday_records <- function(dataset_with_days) {
  options(gsubfn.engine = "R")
  library(sqldf)
  query <- "SELECT * from dataset_with_days where weekday_or_weekend != \"Saturday\" and weekday_or_weekend != \"Sunday\""
  result <- sqldf(query)
  return (result)
} 

get_weekend_records <- function(dataset) {
  options(gsubfn.engine = "R")
  library(sqldf)
  query <- "SELECT * from dataset where weekday_or_weekend = \"Saturday\" or weekday_or_weekend = \"Sunday\""
  result <- sqldf(query)
  return (result)
}
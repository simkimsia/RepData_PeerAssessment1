## return the mean_steps_per_interval dataset
get_mean_steps_per_interval <- function (dataset) {
  # aggregate data by 5 min interval, returning mean
  # for numeric variables
  dataset$steps <- as.numeric(dataset$steps)
  mean_steps_per_interval <-aggregate(dataset$steps, by=list(dataset$interval), 
                                  FUN=mean, na.rm=TRUE)
  
  #rename the column headers in aggdata
  cnames <- c("intervals", "mean_steps")
  colnames(mean_steps_per_interval) <- cnames
  

  return (mean_steps_per_interval)
}

find_max_interval <- function (mean_steps_per_interval) {
  options(gsubfn.engine = "R")
  library(sqldf)
  query <- "SELECT max(mean_steps) as max_mean, intervals from mean_steps_per_interval"
  dataset <- sqldf(query)
  return (dataset)
}
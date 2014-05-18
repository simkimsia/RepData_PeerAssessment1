## return the total_steps_per_day dataset
get_total_steps_per_day <- function (dataset) {
  # aggregate data by date, returning sums
  # for numeric variables
  total_steps_per_day <-aggregate(dataset$steps, by=list(dataset$date), 
                                  FUN=sum, na.rm=TRUE)
  
  #rename the column headers in aggdata
  cnames <- c("days", "total_steps")
  colnames(total_steps_per_day) <- cnames

  return (total_steps_per_day)
}
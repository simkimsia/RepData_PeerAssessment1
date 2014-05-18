## return the total_steps_per_day dataset
get_total_steps_per_day <- function (dataset) {
  # aggregate data by date, returning sums
  # for numeric variables
  total_steps_per_day <-aggregate(dataset$steps, by=list(dataset$date), 
                                  FUN=sum, na.rm=TRUE)
  
  #rename the column headers in aggdata
  cnames <- c("days", "total_steps")
  colnames(total_steps_per_day) <- cnames
  
  # Create the histogram plot
  library(ggplot2)
  ggplot(total_steps_per_day, aes(x=days, y=total_steps)) + 
    geom_bar(stat='identity', width=1, aes(fill="red"), colour="#CC0000") + 
    xlab("Days") +
    ylab("Total steps") +
    ggtitle("Total steps every day")
  return (total_steps_per_day)
}
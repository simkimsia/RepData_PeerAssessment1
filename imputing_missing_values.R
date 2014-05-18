## return the numeric vector of length 1 of number of missing values
find_count_missing_values <- function (dataset) {
  options(gsubfn.engine = "R")
  library(sqldf)
  query <- "SELECT COUNT(steps) as missing FROM dataset WHERE steps is \"NA\""
  result <- sqldf(query)
  return (result)
}

## imputing old dataset with new values to replace the NAs
## old_dataset is a dataframe with the columns steps, date, interval
## replace_with is a dataframe with the columns intervals and mean_steps
replace_missing_values <- function (old_dataset, replace_with) {
  ## cast the dataset as datatable for easier replacement
  #library(data.table)
  #dt = data.table(old_dataset)
  ## find out how many rows inside replace_with
  n <- dim(replace_with)[1]
  ## for loop through the replace_with dataset
  for (i in 1:n) {
    old_dataset$steps[is.na(old_dataset$steps) & old_dataset$interval == replace_with[i, "intervals"]] <- replace_with[i, "mean_steps"]
  }
  
  return (old_dataset)
}
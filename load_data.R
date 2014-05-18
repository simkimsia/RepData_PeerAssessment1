load_data <- function () {
    options(gsubfn.engine = "R")
    library(sqldf)
    query <- "SELECT * from file"
    dataset <- read.csv.sql("./activity.csv", sql=query)
    dataset$steps <- as.numeric(dataset$steps)
    return (dataset)
}

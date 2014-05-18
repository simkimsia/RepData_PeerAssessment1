load_data <- function () {
    options(gsubfn.engine = "R")
    library(sqldf)
    query <- "SELECT * from file"
    dataset <- read.csv.sql("./activity.csv", sql=query)
    
    return (dataset)
}

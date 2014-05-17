# Reproducible Research: Peer Assessment 1


## Loading and preprocessing the data

```r
source("load_data.R")

dataset <- load_data()
```

```
## Loading required package: gsubfn
## Loading required package: proto
## Loading required package: RSQLite
## Loading required package: DBI
## Loading required package: RSQLite.extfuns
```

```
## Warning: closing unused connection 5 (./activity.csv)
```


## What is mean total number of steps taken per day?

```r
source("mean_total_steps_every_day.R")

mean_total_steps <- display_histogram(dataset)
```

```
## Warning: NAs introduced by coercion
## Warning: closing unused connection 6 (./activity.csv)
```

**Mean total number of steps taken per day is:** 

```r
mean_total_steps
```

```
## [1] 9354
```


## What is the average daily activity pattern?



## Imputing missing values



## Are there differences in activity patterns between weekdays and weekends?

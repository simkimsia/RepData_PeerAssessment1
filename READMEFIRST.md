# 2014 Reproducible Research repdata-002 Project 1

This is a submission by @simkimsia at GitHub for the Coursera course
Reproducible Research course code: repdata-002 Project 1 in May 2014.

Below are the instructions of the problem and copied directly from the coursera

This README is divided into 2 separate files:
 1. My own notes (here in READMEFIRST.md)
 2. Problem statement (read README.md)

# Assumptions

 1. Evaluator is using the activity dataset zip file and the csv file from the root folder of this project repo.
 2. Evaluator is using either Windows or Mac
 3. Evaluator has installed the package `sqldf`
 
# How to begin

 1. Go <a href="https://github.com/rdpeng/ExData_Plotting1"> Roger Peng's repo</a> and fork the project
 2. Read the README and download the <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">zip file</a>.
 3. Realize that:
   - the text file is semi colon delimited
   - you are supposed to load the data from the text file unzipped from the zip file
   - you need only a subset of the data in the text file
   - the subset needed falls into 2 dates 1/2/2007 and 2/2/2007
 4. Get the data subset correctly and you should see 2880 obs. of 9 variables. This is largely taken care of by my `load_data.R` script
 5. Create a plot script for each scenario. In my case they are `plot1.R`, `plot2.R`, `plot3.R`, `plot4.R`. Imaginative naming, I know. :)
 



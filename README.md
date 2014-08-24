### Getting and Cleaning Data Course Project
##### https://class.coursera.org/getdata-006/


This repo contains `run_analysis.R`

###### Requirements
* place the content of the repository into `~/Documents/rstudio/getdata-006-quizproject/` or change the working folder in script

###### How to run

There are several ways

* execute `Rscript run_analysis.R` with a command line
* load the script in RStudio and do `Run all` (Command+Option+Return on Mac)

Loading the data takes a while so be patient.

###### Description

Script prepares tidy dataset according to the course project instructions. It does it by merging, transformations, filtering and labeling data. The script is selfcontained and does not require anything else to run (except of the dataset which has to be placed into the `data` folder). The data set is included within the repo. 

Full description of the data and the data set itself can be obtained from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

Resulting tidy data set is being written into `merged_avg_filter_std_mean.txt`. 

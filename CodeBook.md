#### Getting and Cleaning Data Course Project
###### https://class.coursera.org/getdata-006/

## Codebook
##### Samsung Galaxy S smartphone data clean up

### 1. Data source

Human Activity Recognition Using Smartphones Data Set from [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

### 2. Data set information

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

### 3. Tidy data set generation

Contains data which according to the course project specification are transformed as follows:

* test and training data merged together 
* appended labels to describe columns
* filtered to include only measurements on the mean and standard deviation for each measurement
* activity IDs transformed to activity names
* compute average of each variable for each activity and each subject

### 4. Tidy data set description

* Subject is numeric id related to the person which measured the data.
* Activity is factor variable containing activity names as labels.
* The rest of the columns is average of measurements per subject and activity, where
  * `t` stands for time, e.g. tBodyAcc...
  * `f` stands for FFT (Fast Fourier Transformation)

 [1] "Subject"                             
 [2] "Activity"                            
 [3] "tBodyAcc-mean()-X"                   
 [4] "tBodyAcc-mean()-Y"                   
 [5] "tBodyAcc-mean()-Z"                   
 [6] "tGravityAcc-mean()-X"                
 [7] "tGravityAcc-mean()-Y"                
 [8] "tGravityAcc-mean()-Z"                
 [9] "tBodyAccJerk-mean()-X"               
[10] "tBodyAccJerk-mean()-Y"               
[11] "tBodyAccJerk-mean()-Z"               
[12] "tBodyGyro-mean()-X"                  
[13] "tBodyGyro-mean()-Y"                  
[14] "tBodyGyro-mean()-Z"                  
[15] "tBodyGyroJerk-mean()-X"              
[16] "tBodyGyroJerk-mean()-Y"              
[17] "tBodyGyroJerk-mean()-Z"              
[18] "tBodyAccMag-mean()"                  
[19] "tGravityAccMag-mean()"               
[20] "tBodyAccJerkMag-mean()"              
[21] "tBodyGyroMag-mean()"                 
[22] "tBodyGyroJerkMag-mean()"             
[23] "fBodyAcc-mean()-X"                   
[24] "fBodyAcc-mean()-Y"                   
[25] "fBodyAcc-mean()-Z"                   
[26] "fBodyAcc-meanFreq()-X"               
[27] "fBodyAcc-meanFreq()-Y"               
[28] "fBodyAcc-meanFreq()-Z"               
[29] "fBodyAccJerk-mean()-X"               
[30] "fBodyAccJerk-mean()-Y"               
[31] "fBodyAccJerk-mean()-Z"               
[32] "fBodyAccJerk-meanFreq()-X"           
[33] "fBodyAccJerk-meanFreq()-Y"           
[34] "fBodyAccJerk-meanFreq()-Z"           
[35] "fBodyGyro-mean()-X"                  
[36] "fBodyGyro-mean()-Y"                  
[37] "fBodyGyro-mean()-Z"                  
[38] "fBodyGyro-meanFreq()-X"              
[39] "fBodyGyro-meanFreq()-Y"              
[40] "fBodyGyro-meanFreq()-Z"              
[41] "fBodyAccMag-mean()"                  
[42] "fBodyAccMag-meanFreq()"              
[43] "fBodyBodyAccJerkMag-mean()"          
[44] "fBodyBodyAccJerkMag-meanFreq()"      
[45] "fBodyBodyGyroMag-mean()"             
[46] "fBodyBodyGyroMag-meanFreq()"         
[47] "fBodyBodyGyroJerkMag-mean()"         
[48] "fBodyBodyGyroJerkMag-meanFreq()"     
[49] "angle(tBodyAccMean,gravity)"         
[50] "angle(tBodyAccJerkMean),gravityMean)"
[51] "angle(tBodyGyroMean,gravityMean)"    
[52] "angle(tBodyGyroJerkMean,gravityMean)"
[53] "angle(X,gravityMean)"                
[54] "angle(Y,gravityMean)"                
[55] "angle(Z,gravityMean)"                
[56] "tBodyAcc-std()-X"                    
[57] "tBodyAcc-std()-Y"                    
[58] "tBodyAcc-std()-Z"                    
[59] "tGravityAcc-std()-X"                 
[60] "tGravityAcc-std()-Y"                 
[61] "tGravityAcc-std()-Z"                 
[62] "tBodyAccJerk-std()-X"                
[63] "tBodyAccJerk-std()-Y"                
[64] "tBodyAccJerk-std()-Z"                
[65] "tBodyGyro-std()-X"                   
[66] "tBodyGyro-std()-Y"                   
[67] "tBodyGyro-std()-Z"                   
[68] "tBodyGyroJerk-std()-X"               
[69] "tBodyGyroJerk-std()-Y"               
[70] "tBodyGyroJerk-std()-Z"               
[71] "tBodyAccMag-std()"                   
[72] "tGravityAccMag-std()"                
[73] "tBodyAccJerkMag-std()"               
[74] "tBodyGyroMag-std()"                  
[75] "tBodyGyroJerkMag-std()"              
[76] "fBodyAcc-std()-X"                    
[77] "fBodyAcc-std()-Y"                    
[78] "fBodyAcc-std()-Z"                    
[79] "fBodyAccJerk-std()-X"                
[80] "fBodyAccJerk-std()-Y"                
[81] "fBodyAccJerk-std()-Z"                
[82] "fBodyGyro-std()-X"                   
[83] "fBodyGyro-std()-Y"                   
[84] "fBodyGyro-std()-Z"                   
[85] "fBodyAccMag-std()"                   
[86] "fBodyBodyAccJerkMag-std()"           
[87] "fBodyBodyGyroMag-std()"              
[88] "fBodyBodyGyroJerkMag-std()"





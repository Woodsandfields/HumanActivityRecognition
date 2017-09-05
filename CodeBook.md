CodeBook
=================
This CodeBook updates the original CodeBook coming with the raw data.

## About the experimental context that produced the data

### The original data emanates from:

**Human Activity Recognition Using Smartphones Dataset - Version 1.0**, by *Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.*, Smartlab - Non Linear Complex Systems Laboratory / DITEN - Università degli Studi di Genova. / Via Opera Pia 11A, I-16145, Genoa, Italy, Email: activityrecognition@smartlab.ws, website: www.smartlab.ws

### The experimental design:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, the team captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

For each record was initially provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables (still to be found in the raw data). 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### Pre-processing of the data

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 


## Understanding the variables:

Features are normalized and bounded within [-1,1].

Variable names explicitly derive from the following elements:

- The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

- Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ in the raw data). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag in the raw data). 

- Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag in the raw data. (Note the 'f' to indicate frequency domain signals). 

* These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

 ** tBodyAcc-XYZ
 ** tGravityAcc-XYZ
 ** tBodyAccJerk-XYZ
 - tBodyGyro-XYZ
 - tBodyGyroJerk-XYZ
 - tBodyAccMag
 - tGravityAccMag
 - tBodyAccJerkMag
 - tBodyGyroMag
 - tBodyGyroJerkMag
 - fBodyAcc-XYZ
 - fBodyAccJerk-XYZ
 - fBodyGyro-XYZ
 - fBodyAccMag
 - fBodyAccJerkMag
 - fBodyGyroMag
 - fBodyGyroJerkMag

- The set of variables that were estimated from these signals are: 

 - mean(): Mean value
 - std(): Standard deviation
 - meanFreq(): Weighted average of the frequency components to obtain a mean frequency

- Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

 - gravityMean
 - tBodyAccMean
 - tBodyAccJerkMean
 - tBodyGyroMean
 - tBodyGyroJerkMean

- Hence, the full list of the variables, besides "activity" (6 labels: STANDING, SITTING, LAYING, WALKING, WALKING_DOWNSTAIRS, WALKING_UPSTAIRS, see the experimental design section above) and "subject" (30 subject identifiers from 1 to 30, from the experimental design) :

[3] "tBodyAccmeanX"                        "tBodyAccmeanY"                       
 [5] "tBodyAccmeanZ"                        "tBodyAccstdX"                        
 [7] "tBodyAccstdY"                         "tBodyAccstdZ"                        
 [9] "tGravityAccmeanX"                     "tGravityAccmeanY"                    
[11] "tGravityAccmeanZ"                     "tGravityAccstdX"                     
[13] "tGravityAccstdY"                      "tGravityAccstdZ"                     
[15] "tBodyAccJerkmeanX"                    "tBodyAccJerkmeanY"                   
[17] "tBodyAccJerkmeanZ"                    "tBodyAccJerkstdX"                    
[19] "tBodyAccJerkstdY"                     "tBodyAccJerkstdZ"                    
[21] "tBodyGyromeanX"                       "tBodyGyromeanY"                      
[23] "tBodyGyromeanZ"                       "tBodyGyrostdX"                       
[25] "tBodyGyrostdY"                        "tBodyGyrostdZ"                       
[27] "tBodyGyroJerkmeanX"                   "tBodyGyroJerkmeanY"                  
[29] "tBodyGyroJerkmeanZ"                   "tBodyGyroJerkstdX"                   
[31] "tBodyGyroJerkstdY"                    "tBodyGyroJerkstdZ"                   
[33] "tBodyAccMagmean"                      "tBodyAccMagstd"                      
[35] "tGravityAccMagmean"                   "tGravityAccMagstd"                   
[37] "tBodyAccJerkMagmean"                  "tBodyAccJerkMagstd"                  
[39] "tBodyGyroMagmean"                     "tBodyGyroMagstd"                     
[41] "tBodyGyroJerkMagmean"                 "tBodyGyroJerkMagstd"                 
[43] "fBodyAccmeanX"                        "fBodyAccmeanY"                       
[45] "fBodyAccmeanZ"                        "fBodyAccstdX"                        
[47] "fBodyAccstdY"                         "fBodyAccstdZ"                        
[49] "fBodyAccmeanFreqX"                    "fBodyAccmeanFreqY"                   
[51] "fBodyAccmeanFreqZ"                    "fBodyAccJerkmeanX"                   
[53] "fBodyAccJerkmeanY"                    "fBodyAccJerkmeanZ"                   
[55] "fBodyAccJerkstdX"                     "fBodyAccJerkstdY"                    
[57] "fBodyAccJerkstdZ"                     "fBodyAccJerkmeanFreqX"               
[59] "fBodyAccJerkmeanFreqY"                "fBodyAccJerkmeanFreqZ"               
[61] "fBodyGyromeanX"                       "fBodyGyromeanY"                      
[63] "fBodyGyromeanZ"                       "fBodyGyrostdX"                       
[65] "fBodyGyrostdY"                        "fBodyGyrostdZ"                       
[67] "fBodyGyromeanFreqX"                   "fBodyGyromeanFreqY"                  
[69] "fBodyGyromeanFreqZ"                   "fBodyAccMagmean"                     
[71] "fBodyAccMagstd"                       "fBodyAccMagmeanFreq"                 
[73] "fBodyBodyAccJerkMagmean"              "fBodyBodyAccJerkMagstd"              
[75] "fBodyBodyAccJerkMagmeanFreq"          "fBodyBodyGyroMagmean"                
[77] "fBodyBodyGyroMagstd"                  "fBodyBodyGyroMagmeanFreq"            
[79] "fBodyBodyGyroJerkMagmean"             "fBodyBodyGyroJerkMagstd"             
[81] "fBodyBodyGyroJerkMagmeanFreq"         "angle(tBodyAccMean,gravity)"         
[83] "angle(tBodyAccJerkMean),gravityMean)" "angle(tBodyGyroMean,gravityMean)"    
[85] "angle(tBodyGyroJerkMean,gravityMean)" "angle(X,gravityMean)"                
[87] "angle(Y,gravityMean)"                 "angle(Z,gravityMean)

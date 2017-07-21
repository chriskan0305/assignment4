# Codebook for Human Activity Recognition Using Smartphones Dataset

## How the experiment is conducted
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

## Structure of each record
For each record:

* An identifier of the subject (column 1) performing the activity (column 2)
* A 79-feature (column 3 to 81) vector with time and frequency domain variables
* The mean and standard diviation of triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
* The mean and standard diviation of triaxial Angular velocity from the gyroscope. 

## Features naming convention
Naming convention: ABCD
* A:    t (time domain)
        f (frequency domain)
* B:    BodyAcc (body acceleration)
        GravityAcc (graviy acceleration)
        BodyAccJerk (body linear acceleration)
        BodyGyroJerk (body angular velocity)
        BodyAccMag (magnitude of body acceleration)
        GravityAccMag (magnitude of graviy acceleration)
        BodyAccJerkMag (magnitude of body linear acceleration)
        BodyGyroJerkMag (magnitude of body angular velocity)
* C:    mean value of mean (mean()) or standard deviation (std()) or mean frequency (meanfreq()) of the feature
* D:    axis X, Y, Z

## Detail of data table
### Subject and activity
  subject                        : From 1 to 30
  activity                       : Factor w/ 6 levels
                                   LAYING SITTING STANDING WALKING WALKING_DOWNSTAIRS WALKING_UPSTAIRS

### Mean and sd of variables of different types along different axes in time domain
  tBodyAcc-mean()-X              : numeric
  tBodyAcc-mean()-Y              : numeric
  tBodyAcc-mean()-Z              : numeric
  tBodyAcc-std()-X               : numeric
  tBodyAcc-std()-Y               : numeric
  tBodyAcc-std()-Z               : numeric
  tGravityAcc-mean()-X           : numeric
  tGravityAcc-mean()-Y           : numeric
  tGravityAcc-mean()-Z           : numeric
  tGravityAcc-std()-X            : numeric
  tGravityAcc-std()-Y            : numeric
  tGravityAcc-std()-Z            : numeric
  tBodyAccJerk-mean()-X          : numeric
  tBodyAccJerk-mean()-Y          : numeric
  tBodyAccJerk-mean()-Z          : numeric
  tBodyAccJerk-std()-X           : numeric
  tBodyAccJerk-std()-Y           : numeric
  tBodyAccJerk-std()-Z           : numeric
  tBodyGyro-mean()-X             : numeric
  tBodyGyro-mean()-Y             : numeric
  tBodyGyro-mean()-Z             : numeric
  tBodyGyro-std()-X              : numeric
  tBodyGyro-std()-Y              : numeric
  tBodyGyro-std()-Z              : numeric
  tBodyGyroJerk-mean()-X         : numeric
  tBodyGyroJerk-mean()-Y         : numeric
  tBodyGyroJerk-mean()-Z         : numeric
  tBodyGyroJerk-std()-X          : numeric
  tBodyGyroJerk-std()-Y          : numeric
  tBodyGyroJerk-std()-Z          : numeric
  tBodyAccMag-mean()             : numeric
  tBodyAccMag-std()              : numeric
  tGravityAccMag-mean()          : numeric
  tGravityAccMag-std()           : numeric
  tBodyAccJerkMag-mean()         : numeric
  tBodyAccJerkMag-std()          : numeric
  tBodyGyroMag-mean()            : numeric
  tBodyGyroMag-std()             : numeric
  tBodyGyroJerkMag-mean()        : numeric
  tBodyGyroJerkMag-std()         : numeric
 
### Mean and sd of variables of different types along different axes in frequency domain
  fBodyAcc-mean()-X              : numeric
  fBodyAcc-mean()-Y              : numeric
  fBodyAcc-mean()-Z              : numeric
  fBodyAcc-std()-X               : numeric
  fBodyAcc-std()-Y               : numeric
  fBodyAcc-std()-Z               : numeric
  fBodyAcc-meanFreq()-X          : numeric
  fBodyAcc-meanFreq()-Y          : numeric
  fBodyAcc-meanFreq()-Z          : numeric
  fBodyAccJerk-mean()-X          : numeric
  fBodyAccJerk-mean()-Y          : numeric
  fBodyAccJerk-mean()-Z          : numeric
  fBodyAccJerk-std()-X           : numeric
  fBodyAccJerk-std()-Y           : numeric
  fBodyAccJerk-std()-Z           : numeric
  fBodyAccJerk-meanFreq()-X      : numeric
  fBodyAccJerk-meanFreq()-Y      : numeric
  fBodyAccJerk-meanFreq()-Z      : numeric
  fBodyGyro-mean()-X             : numeric
  fBodyGyro-mean()-Y             : numeric
  fBodyGyro-mean()-Z             : numeric
  fBodyGyro-std()-X              : numeric
  fBodyGyro-std()-Y              : numeric
  fBodyGyro-std()-Z              : numeric
  fBodyGyro-meanFreq()-X         : numeric
  fBodyGyro-meanFreq()-Y         : numeric
  fBodyGyro-meanFreq()-Z         : numeric
  fBodyAccMag-mean()             : numeric
  fBodyAccMag-std()              : numeric
  fBodyAccMag-meanFreq()         : numeric
  fBodyBodyAccJerkMag-mean()     : numeric
  fBodyBodyAccJerkMag-std()      : numeric
  fBodyBodyAccJerkMag-meanFreq() : numeric
  fBodyBodyGyroMag-mean()        : numeric
  fBodyBodyGyroMag-std()         : numeric
  fBodyBodyGyroMag-meanFreq()    : numeric
  fBodyBodyGyroJerkMag-mean()    : numeric
  fBodyBodyGyroJerkMag-std()     : numeric
  fBodyBodyGyroJerkMag-meanFreq(): numeric

### Notes: 
### ======
* Values are normalized and bounded within [-1,1].


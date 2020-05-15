### Human Activity Recognition Using Smartphones Data Set

#### Data

Accelerometers contained in smartphones can be used to collect data on
physical activity. Patterns in that data allow to recognize the kind of
physical activity performed. The data presented here was collected from
smartphones worn by 30 volunteers performing six different kinds of
physical activities. The volunteers were assigned to two groups: test, 9
to the ‘train’ group and train, 21 to the ‘test’ group.

The data from the ‘train’ group was used to develop the pattern
recognition algorithm. The data from the subjects in the ‘test’ group
was used to assess the accuracy of the algorithm in determining the kind
of activity performed.

A zip file containing the raw data for this project can be downloaded
from
[here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

The dataset includes 10299 observations, each representing a 2.56 second
data sample.

#### Variables

*subjectid*

ID number of the subject. range:

    [1]  1 30

*group*

assignment of the subject to the test group or the train group.

      code label
    1    2 train
    2    1  test

*activity*

Activity that was being performed during the sample window. This
classification was done by hand on the basis of video recordings.

      code              label
    1    5           STANDING
    2    4            SITTING
    3    6             LAYING
    4    1            WALKING
    5    3 WALKING_DOWNSTAIRS
    6    2   WALKING_UPSTAIRS

*Data from the accelerometer and the gyriscope*

Table 1 : Linear movements

<table>
<colgroup>
<col style="width: 7%" />
<col style="width: 11%" />
<col style="width: 45%" />
<col style="width: 35%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th style="text-align: center;">Gravity</th>
<th style="text-align: center;">Body Linear Acceleration</th>
<th style="text-align: center;">Body Linear Jerk</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>X-AXIS</td>
<td style="text-align: center;">GravityX</td>
<td style="text-align: center;">LinearAccelerationX<br>LinearAccelerationXFrequency</td>
<td style="text-align: center;">LinearJerkX<br>LinearJerkXFrequency</td>
</tr>
<tr class="even">
<td>Y-AXIS</td>
<td style="text-align: center;">GravityY</td>
<td style="text-align: center;">LinearAccelerationY<br>LinearAccelerationYFrequency</td>
<td style="text-align: center;">LinearJerkY<br>LinearJerkYFrequency</td>
</tr>
<tr class="odd">
<td>Z-AXIS</td>
<td style="text-align: center;">GravityZ</td>
<td style="text-align: center;">LinearAccelerationZ<br>LinearAccelerationZFrequency</td>
<td style="text-align: center;">LinearJerkZ<br>LinearJerkZFrequency</td>
</tr>
<tr class="even">
<td>MAGNITUDE</td>
<td style="text-align: center;">GravityMagnitude</td>
<td style="text-align: center;">LinearAccelerationMagnitude<br>LinearAccelerationMagnitudeFrequency</td>
<td style="text-align: center;">LinearJerkMagnitude<br>LinearJerkMagnitudeFrequency</td>
</tr>
</tbody>
</table>

Table 2 : Angular movements

<table>
<colgroup>
<col style="width: 8%" />
<col style="width: 51%" />
<col style="width: 40%" />
</colgroup>
<thead>
<tr class="header">
<th></th>
<th style="text-align: center;">Body Angular Velocity</th>
<th style="text-align: center;">Body Angular Jerk</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td>X-AXIS</td>
<td style="text-align: center;">AngularVelocityX<br>AngularVelocityXFrequency</td>
<td style="text-align: center;">AngularJerkX</td>
</tr>
<tr class="even">
<td>Y-AXIS</td>
<td style="text-align: center;">AngularVelocityY<br>AngularVelocityYFrequency</td>
<td style="text-align: center;">AngularJerkY</td>
</tr>
<tr class="odd">
<td>Z-AXIS</td>
<td style="text-align: center;">AngularVelocityZ<br>AngularVelocityZFrequency</td>
<td style="text-align: center;">AngularJerkZ</td>
</tr>
<tr class="even">
<td>MAGNITUDE</td>
<td style="text-align: center;">AngularVelocityMagnitude<br>AngularVelocityMagnitudeFrequency</td>
<td style="text-align: center;">AngularJerkMagnitude<br>AngularJerkMagnitudeFrequency</td>
</tr>
</tbody>
</table>

First, the accelerometer and gyroscope 3-axial raw signals (total linear
acceleration and angular velocity) were captured at a constant rate of
50 Hz. Then they were filtered using a median filter and a 3rd order low
pass Butterworth filter with a corner frequency of 20 Hz to remove
noise. Similarly, the total acceleration signal was then separated into
body acceleration signals (LinearAcceleration-XYZ) and gravity
acceleration signals (Gravity-XYZ) using another low pass Butterworth
filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration (LinearAcceleration-XYZ) and
angular velocity (AngularVelocity-XYZ) were derived in time to obtain
Jerk signals (LinearJerk-XYZ and AngularJerk-XYZ)

Also the magnitude of these three-dimensional signals were calculated
using the Euclidean norm (GravityMagnitude, LinearAccelerationMagnitude,
LinearJerkMagnitude, AngularVelocityMagnitude and AngularJerkMagnitude).

Fast Fourier Transform (FFT) was applied to some of these signals. The
variables obtained are named with the ‘Frequency’ suffix.

For each one of the 10299 observations, the mean and standard deviation
of all variables was calculated.

Finally these means and standard deviations were averaged over all the
observations, by subject and activity.

Annex : old and new variable names
----------------------------------

          originalvarlabels             varlabels                                 
     [1,] "tBodyAcc-mean()-X"           "LinearAccelerationXmean"                 
     [2,] "tBodyAcc-mean()-Y"           "LinearAccelerationYmean"                 
     [3,] "tBodyAcc-mean()-Z"           "LinearAccelerationZmean"                 
     [4,] "tBodyAcc-std()-X"            "LinearAccelerationXstd"                  
     [5,] "tBodyAcc-std()-Y"            "LinearAccelerationYstd"                  
     [6,] "tBodyAcc-std()-Z"            "LinearAccelerationZstd"                  
     [7,] "tGravityAcc-mean()-X"        "GravityXmean"                            
     [8,] "tGravityAcc-mean()-Y"        "GravityYmean"                            
     [9,] "tGravityAcc-mean()-Z"        "GravityZmean"                            
    [10,] "tGravityAcc-std()-X"         "GravityXstd"                             
    [11,] "tGravityAcc-std()-Y"         "GravityYstd"                             
    [12,] "tGravityAcc-std()-Z"         "GravityZstd"                             
    [13,] "tBodyAccJerk-mean()-X"       "LinearJerkXmean"                         
    [14,] "tBodyAccJerk-mean()-Y"       "LinearJerkYmean"                         
    [15,] "tBodyAccJerk-mean()-Z"       "LinearJerkZmean"                         
    [16,] "tBodyAccJerk-std()-X"        "LinearJerkXstd"                          
    [17,] "tBodyAccJerk-std()-Y"        "LinearJerkYstd"                          
    [18,] "tBodyAccJerk-std()-Z"        "LinearJerkZstd"                          
    [19,] "tBodyGyro-mean()-X"          "AngularVelocityXmean"                    
    [20,] "tBodyGyro-mean()-Y"          "AngularVelocityYmean"                    
    [21,] "tBodyGyro-mean()-Z"          "AngularVelocityZmean"                    
    [22,] "tBodyGyro-std()-X"           "AngularVelocityXstd"                     
    [23,] "tBodyGyro-std()-Y"           "AngularVelocityYstd"                     
    [24,] "tBodyGyro-std()-Z"           "AngularVelocityZstd"                     
    [25,] "tBodyGyroJerk-mean()-X"      "AngularJerkXmean"                        
    [26,] "tBodyGyroJerk-mean()-Y"      "AngularJerkYmean"                        
    [27,] "tBodyGyroJerk-mean()-Z"      "AngularJerkZmean"                        
    [28,] "tBodyGyroJerk-std()-X"       "AngularJerkXstd"                         
    [29,] "tBodyGyroJerk-std()-Y"       "AngularJerkYstd"                         
    [30,] "tBodyGyroJerk-std()-Z"       "AngularJerkZstd"                         
    [31,] "tBodyAccMag-mean()"          "LinearAccelerationMagnitudemean"         
    [32,] "tBodyAccMag-std()"           "LinearAccelerationMagnitudestd"          
    [33,] "tGravityAccMag-mean()"       "GravityMagnitudemean"                    
    [34,] "tGravityAccMag-std()"        "GravityMagnitudestd"                     
    [35,] "tBodyAccJerkMag-mean()"      "LinearJerkMagnitudemean"                 
    [36,] "tBodyAccJerkMag-std()"       "LinearJerkMagnitudestd"                  
    [37,] "tBodyGyroMag-mean()"         "AngularVelocityMagnitudemean"            
    [38,] "tBodyGyroMag-std()"          "AngularVelocityMagnitudestd"             
    [39,] "tBodyGyroJerkMag-mean()"     "AngularJerkMagnitudemean"                
    [40,] "tBodyGyroJerkMag-std()"      "AngularJerkMagnitudestd"                 
    [41,] "fBodyAcc-mean()-X"           "LinearAccelerationXFrequencymean"        
    [42,] "fBodyAcc-mean()-Y"           "LinearAccelerationYFrequencymean"        
    [43,] "fBodyAcc-mean()-Z"           "LinearAccelerationZFrequencymean"        
    [44,] "fBodyAcc-std()-X"            "LinearAccelerationXFrequencystd"         
    [45,] "fBodyAcc-std()-Y"            "LinearAccelerationYFrequencystd"         
    [46,] "fBodyAcc-std()-Z"            "LinearAccelerationZFrequencystd"         
    [47,] "fBodyAccJerk-mean()-X"       "LinearJerkXFrequencymean"                
    [48,] "fBodyAccJerk-mean()-Y"       "LinearJerkYFrequencymean"                
    [49,] "fBodyAccJerk-mean()-Z"       "LinearJerkZFrequencymean"                
    [50,] "fBodyAccJerk-std()-X"        "LinearJerkXFrequencystd"                 
    [51,] "fBodyAccJerk-std()-Y"        "LinearJerkYFrequencystd"                 
    [52,] "fBodyAccJerk-std()-Z"        "LinearJerkZFrequencystd"                 
    [53,] "fBodyGyro-mean()-X"          "AngularVelocityXFrequencymean"           
    [54,] "fBodyGyro-mean()-Y"          "AngularVelocityYFrequencymean"           
    [55,] "fBodyGyro-mean()-Z"          "AngularVelocityZFrequencymean"           
    [56,] "fBodyGyro-std()-X"           "AngularVelocityXFrequencystd"            
    [57,] "fBodyGyro-std()-Y"           "AngularVelocityYFrequencystd"            
    [58,] "fBodyGyro-std()-Z"           "AngularVelocityZFrequencystd"            
    [59,] "fBodyAccMag-mean()"          "LinearAccelerationMagnitudeFrequencymean"
    [60,] "fBodyAccMag-std()"           "LinearAccelerationMagnitudeFrequencystd" 
    [61,] "fBodyBodyAccJerkMag-mean()"  "LinearJerkMagnitudeFrequencymean"        
    [62,] "fBodyBodyAccJerkMag-std()"   "LinearJerkMagnitudeFrequencystd"         
    [63,] "fBodyBodyGyroMag-mean()"     "AngularVelocityMagnitudeFrequencymean"   
    [64,] "fBodyBodyGyroMag-std()"      "AngularVelocityMagnitudeFrequencystd"    
    [65,] "fBodyBodyGyroJerkMag-mean()" "AngularJerkMagnitudeFrequencymean"       
    [66,] "fBodyBodyGyroJerkMag-std()"  "AngularJerkMagnitudeFrequencystd"

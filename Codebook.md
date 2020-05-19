### Human Activity Recognition Using Smartphones Data Set

#### Data

Accelerometers contained in smartphones can be used to collect data on
physical activity. Patterns in that data allow to recognize the kind of
physical activity performed.

In an experimental study, 30 volunteers wearing smartphones were asked
to perform six different kinds of physical activities.

The data presented here consists of means and standard deviations of 33
calculated variables representing motion (linear acceleration, linear
jerk, angular velocity and angular jerk) and associatied vibrations
(linear acceleration frequency, linear jerk frequency, angular velocity
frequency and angular jerk frequency), by subject and type of activity.

For more details about how these 33 variables were calculated, see the
joint ‘README’ document.

The values of these variables were averaged over their respective
domains (128 readings over time domain or frequency domain) and standard
deviations were calculated.

To produce the present dataset, these means and standard deviations were
averaged again, by subject (n=30) and activity (6 types). Each one of
the 180 rows of this dataset thus represents a different
subject-activity combination.

The units of the raw signals have not been preserved. All the variables
are normalized and bounded within \[-1,1\].

Note: The volunteers were assigned to two groups: train, 21 to the
‘train’ group and test, 9 to the ‘test’ group. The data from the ‘train’
group was used to develop the pattern recognition algorithm. The data
from the subjects in the ‘test’ group was used to assess the accuracy of
the algorithm in determining the kind of activity performed.

A zip file containing the raw data for this project can be downloaded
from
[here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

#### How to load the data from the text file ‘tidydata.txt’?

To load the data from the text file ‘tidydata.txt’ into R studio, simply
run the R script file ‘reading\_tidydata\_txt.R’

#### Variables

*subjectid*

ID number of the subject. range:

    [1] "1" "9"

*group*

assignment of the subject to the test group or the train group.

      code label
    1    1 train
    2    2  test

*activity*

Activity that was being performed during the sample window. This
classification was done by hand on the basis of video recordings.

      code              label
    1    1            WALKING
    2    2   WALKING_UPSTAIRS
    3    3 WALKING_DOWNSTAIRS
    4    4            SITTING
    5    5           STANDING
    6    6             LAYING

*Data on body motions*

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

Annex : old and new variable names
----------------------------------

    Warning: 66 parsing failures.
    row               col expected actual                         file
      1 New variable name 41 chars     40 './beforeAfterVarlabels.txt'
      2 New variable name 41 chars     40 './beforeAfterVarlabels.txt'
      3 New variable name 41 chars     40 './beforeAfterVarlabels.txt'
      4 New variable name 41 chars     40 './beforeAfterVarlabels.txt'
      5 New variable name 41 chars     40 './beforeAfterVarlabels.txt'
    ... ................. ........ ...... ............................
    See problems(...) for more details.

                 Old variable name                        New variable name
    1            tBodyAcc-mean()-X                  LinearAccelerationXmean
    2            tBodyAcc-mean()-Y                  LinearAccelerationYmean
    3            tBodyAcc-mean()-Z                  LinearAccelerationZmean
    4             tBodyAcc-std()-X                   LinearAccelerationXstd
    5             tBodyAcc-std()-Y                   LinearAccelerationYstd
    6             tBodyAcc-std()-Z                   LinearAccelerationZstd
    7         tGravityAcc-mean()-X                             GravityXmean
    8         tGravityAcc-mean()-Y                             GravityYmean
    9         tGravityAcc-mean()-Z                             GravityZmean
    10         tGravityAcc-std()-X                              GravityXstd
    11         tGravityAcc-std()-Y                              GravityYstd
    12         tGravityAcc-std()-Z                              GravityZstd
    13       tBodyAccJerk-mean()-X                          LinearJerkXmean
    14       tBodyAccJerk-mean()-Y                          LinearJerkYmean
    15       tBodyAccJerk-mean()-Z                          LinearJerkZmean
    16        tBodyAccJerk-std()-X                           LinearJerkXstd
    17        tBodyAccJerk-std()-Y                           LinearJerkYstd
    18        tBodyAccJerk-std()-Z                           LinearJerkZstd
    19          tBodyGyro-mean()-X                     AngularVelocityXmean
    20          tBodyGyro-mean()-Y                     AngularVelocityYmean
    21          tBodyGyro-mean()-Z                     AngularVelocityZmean
    22           tBodyGyro-std()-X                      AngularVelocityXstd
    23           tBodyGyro-std()-Y                      AngularVelocityYstd
    24           tBodyGyro-std()-Z                      AngularVelocityZstd
    25      tBodyGyroJerk-mean()-X                         AngularJerkXmean
    26      tBodyGyroJerk-mean()-Y                         AngularJerkYmean
    27      tBodyGyroJerk-mean()-Z                         AngularJerkZmean
    28       tBodyGyroJerk-std()-X                          AngularJerkXstd
    29       tBodyGyroJerk-std()-Y                          AngularJerkYstd
    30       tBodyGyroJerk-std()-Z                          AngularJerkZstd
    31          tBodyAccMag-mean()          LinearAccelerationMagnitudemean
    32           tBodyAccMag-std()           LinearAccelerationMagnitudestd
    33       tGravityAccMag-mean()                     GravityMagnitudemean
    34        tGravityAccMag-std()                      GravityMagnitudestd
    35      tBodyAccJerkMag-mean()                  LinearJerkMagnitudemean
    36       tBodyAccJerkMag-std()                   LinearJerkMagnitudestd
    37         tBodyGyroMag-mean()             AngularVelocityMagnitudemean
    38          tBodyGyroMag-std()              AngularVelocityMagnitudestd
    39     tBodyGyroJerkMag-mean()                 AngularJerkMagnitudemean
    40      tBodyGyroJerkMag-std()                  AngularJerkMagnitudestd
    41           fBodyAcc-mean()-X         LinearAccelerationXFrequencymean
    42           fBodyAcc-mean()-Y         LinearAccelerationYFrequencymean
    43           fBodyAcc-mean()-Z         LinearAccelerationZFrequencymean
    44            fBodyAcc-std()-X          LinearAccelerationXFrequencystd
    45            fBodyAcc-std()-Y          LinearAccelerationYFrequencystd
    46            fBodyAcc-std()-Z          LinearAccelerationZFrequencystd
    47       fBodyAccJerk-mean()-X                 LinearJerkXFrequencymean
    48       fBodyAccJerk-mean()-Y                 LinearJerkYFrequencymean
    49       fBodyAccJerk-mean()-Z                 LinearJerkZFrequencymean
    50        fBodyAccJerk-std()-X                  LinearJerkXFrequencystd
    51        fBodyAccJerk-std()-Y                  LinearJerkYFrequencystd
    52        fBodyAccJerk-std()-Z                  LinearJerkZFrequencystd
    53          fBodyGyro-mean()-X            AngularVelocityXFrequencymean
    54          fBodyGyro-mean()-Y            AngularVelocityYFrequencymean
    55          fBodyGyro-mean()-Z            AngularVelocityZFrequencymean
    56           fBodyGyro-std()-X             AngularVelocityXFrequencystd
    57           fBodyGyro-std()-Y             AngularVelocityYFrequencystd
    58           fBodyGyro-std()-Z             AngularVelocityZFrequencystd
    59          fBodyAccMag-mean() LinearAccelerationMagnitudeFrequencymean
    60           fBodyAccMag-std()  LinearAccelerationMagnitudeFrequencystd
    61  fBodyBodyAccJerkMag-mean()         LinearJerkMagnitudeFrequencymean
    62   fBodyBodyAccJerkMag-std()          LinearJerkMagnitudeFrequencystd
    63     fBodyBodyGyroMag-mean()    AngularVelocityMagnitudeFrequencymean
    64      fBodyBodyGyroMag-std()     AngularVelocityMagnitudeFrequencystd
    65 fBodyBodyGyroJerkMag-mean()        AngularJerkMagnitudeFrequencymean
    66  fBodyBodyGyroJerkMag-std()         AngularJerkMagnitudeFrequencystd

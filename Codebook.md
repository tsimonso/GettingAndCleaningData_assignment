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

The raw data obtain form the accelerometers and the gyroscopes was used
to derive a number of time domain variables (prefix ‘t’ to denote time).
For each of these variables, the mean values and standard deviations of
the 128 readings of each 2.56 second window sample were then calculated.
The lists of resulting variables are presented here. The detailed
process to produce them is described below.

First, the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and
tGyro-XYZ were captured at a constant rate of 50 Hz. Then they were
filtered using a median filter and a 3rd order low pass Butterworth
filter with a corner frequency of 20 Hz to remove noise. Similarly, the
acceleration signal was then separated into body and gravity
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another
low pass Butterworth filter with a corner frequency of 0.3 Hz.

*tBodyAcc-XYZ variables*

    character(0)

*tGravityAcc-XYZ variables*

    character(0)

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals:

*tBodyAccJerk-XYZ variables*

    character(0)

*tBodyGyroJerk-XYZ variables*

    character(0)

Also the magnitude of these three-dimensional signals were calculated
using the Euclidean norm:

*tBodyAccMag variables*

    character(0)

*tGravityAccMag variables*

    character(0)

*tBodyAccJerkMag variables*

    character(0)

*tBodyGyroMag variables*

    character(0)

*tBodyGyroJerkMag variables*

    character(0)

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing:

(Note the ‘f’ to indicate frequency domain signals)

*fBodyAcc-XYZ variables*

    character(0)

*fBodyAccJerk-XYZ variables*

    character(0)

*fBodyGyro-XYZ variables*

    character(0)

*fBodyAccJerkMag variables*

    character(0)

*fBodyGyroMag variables*

    character(0)

*fBodyGyroJerkMag variables*

    character(0)

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

Linear movements

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
<td>X-axis</td>
<td style="text-align: center;">GravityX</td>
<td style="text-align: center;">LinearAccelerationX<br>LinearAccelerationXFrequency</td>
<td style="text-align: center;">LinearJerkX<br>LinearJerkXFrequency</td>
</tr>
<tr class="even">
<td>Y-axis</td>
<td style="text-align: center;">GravityY</td>
<td style="text-align: center;">LinearAccelerationY<br>LinearAccelerationYFrequency</td>
<td style="text-align: center;">LinearJerkY<br>LinearJerkYFrequency</td>
</tr>
<tr class="odd">
<td>Z-axis</td>
<td style="text-align: center;">GravityZ</td>
<td style="text-align: center;">LinearAccelerationZ<br>LinearAccelerationZFrequency</td>
<td style="text-align: center;">LinearJerkZ<br>LinearJerkZFrequency</td>
</tr>
<tr class="even">
<td>Magnitude</td>
<td style="text-align: center;">GravityMagnitude</td>
<td style="text-align: center;">LinearAccelerationMagnitude<br>LinearAccelerationMagnitudeFrequency</td>
<td style="text-align: center;">LinearJerkMagnitude<br>LinearJerkMagnitudeFrequency</td>
</tr>
</tbody>
</table>

<!--html_preserve-->
<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-1wig{font-weight:bold;text-align:left;vertical-align:top}
.tg .tg-amwm{font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-7btt{border-color:inherit;font-weight:bold;text-align:center;vertical-align:top}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
<tr>
<th class="tg-amwm">
</th>
<th class="tg-amwm" colspan="3">
Linear movements (accelerometer)
</th>
<th class="tg-amwm" colspan="3">
Angular movements (gyroscope)
</th>
</tr>
</thead>
<tbody>
<tr>
<td class="tg-7btt">
</td>
<td class="tg-7btt">
Gravity
</td>
<td class="tg-7btt" colspan="2">
Body
</td>
<td class="tg-7btt" colspan="3">
Body
</td>
</tr>
<tr>
<td class="tg-0pky">
</td>
<td class="tg-7btt">
Acceleration<br>
</td>
<td class="tg-7btt">
Acceleration
</td>
<td class="tg-7btt">
Jerk
</td>
<td class="tg-7btt">
Velocity
</td>
<td class="tg-amwm">
Acceleration
</td>
<td class="tg-amwm">
Jerk
</td>
</tr>
<tr>
<td class="tg-1wig">
X-axis
</td>
<td class="tg-0lax">
GravityX
</td>
<td class="tg-0lax">
BodyAccelerationX<br>BodyAccelerationXFrequency
</td>
<td class="tg-0lax">
LinearJerkX<br>LinearJerkXFrequency
</td>
<td class="tg-0lax">
AngularVelocityX<br>AngularVelocityXFrequency
</td>
<td class="tg-0lax">
</td>
<td class="tg-0lax">
AngularJerkX
</td>
</tr>
<tr>
<td class="tg-1wig">
Y-axis
</td>
<td class="tg-0lax">
GravityY
</td>
<td class="tg-0lax">
BodyAccelerationY<br>BodyAccelerationYFrequency
</td>
<td class="tg-0lax">
LinearJerkY<br>LinearJerkYFrequency
</td>
<td class="tg-0lax">
AngularVelocityY<br>AngularVelocityYFrequency
</td>
<td class="tg-0lax">
</td>
<td class="tg-0lax">
AngularJerkY
</td>
</tr>
<tr>
<td class="tg-1wig">
Z-axis
</td>
<td class="tg-0lax">
GravityZ
</td>
<td class="tg-0lax">
BodyAccelerationZ<br>BodyAccelerationZFrequency
</td>
<td class="tg-0lax">
LinearJerkZ<br>LinearJerkZFrequency
</td>
<td class="tg-0lax">
AngularVelocityZ<br>AngularVelocityZFrequency
</td>
<td class="tg-0lax">
</td>
<td class="tg-0lax">
AngularJerkZ
</td>
</tr>
<tr>
<td class="tg-1wig">
Magnitude
</td>
<td class="tg-0lax">
GravityMagnitude
</td>
<td class="tg-0lax">
BodyAccelerationMagnitude<br>BodyAccelerationMagnitudeFrequency
</td>
<td class="tg-0lax">
LinearJerkMagnitude<br>LinearJerkMagnitudeFrequency
</td>
<td class="tg-0lax">
AngularVelocityMagnitude<br>AngularVelocityMagnitudeFrequency
</td>
<td class="tg-0lax">
</td>
<td class="tg-0lax">
AngularJerkMagnitude<br>AngularJerkMagnitudeFrequency
</td>
</tr>
</tbody>
</table>
<!--/html_preserve-->

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

    [1] "tbodyaccmeanx" "tbodyaccmeany" "tbodyaccmeanz" "tbodyaccstdx" 
    [5] "tbodyaccstdy"  "tbodyaccstdz" 

*tGravityAcc-XYZ variables*

    [1] "tgravityaccmeanx" "tgravityaccmeany" "tgravityaccmeanz" "tgravityaccstdx" 
    [5] "tgravityaccstdy"  "tgravityaccstdz" 

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals:

*tBodyAccJerk-XYZ variables*

    [1] "tbodyaccjerkmeanx" "tbodyaccjerkmeany" "tbodyaccjerkmeanz"
    [4] "tbodyaccjerkstdx"  "tbodyaccjerkstdy"  "tbodyaccjerkstdz" 

*tBodyGyroJerk-XYZ variables*

    [1] "tbodygyrojerkmeanx" "tbodygyrojerkmeany" "tbodygyrojerkmeanz"
    [4] "tbodygyrojerkstdx"  "tbodygyrojerkstdy"  "tbodygyrojerkstdz" 

Also the magnitude of these three-dimensional signals were calculated
using the Euclidean norm:

*tBodyAccMag variables*

    [1] "tbodyaccmagmean" "tbodyaccmagstd" 

*tGravityAccMag variables*

    [1] "tgravityaccmagmean" "tgravityaccmagstd" 

*tBodyAccJerkMag variables*

    [1] "tbodyaccjerkmagmean" "tbodyaccjerkmagstd" 

*tBodyGyroMag variables*

    [1] "tbodygyromagmean" "tbodygyromagstd" 

*tBodyGyroJerkMag variables*

    [1] "tbodygyrojerkmagmean" "tbodygyrojerkmagstd" 

Finally a Fast Fourier Transform (FFT) was applied to some of these
signals producing:

(Note the ‘f’ to indicate frequency domain signals)

*fBodyAcc-XYZ variables*

    [1] "fbodyaccmeanx" "fbodyaccmeany" "fbodyaccmeanz" "fbodyaccstdx" 
    [5] "fbodyaccstdy"  "fbodyaccstdz" 

*fBodyAccJerk-XYZ variables*

    [1] "fbodyaccjerkmeanx" "fbodyaccjerkmeany" "fbodyaccjerkmeanz"
    [4] "fbodyaccjerkstdx"  "fbodyaccjerkstdy"  "fbodyaccjerkstdz" 

*fBodyGyro-XYZ variables*

    [1] "fbodygyromeanx" "fbodygyromeany" "fbodygyromeanz" "fbodygyrostdx" 
    [5] "fbodygyrostdy"  "fbodygyrostdz" 

*fBodyAccJerkMag variables*

    [1] "fbodyaccjerkmagmean" "fbodyaccjerkmagstd" 

*fBodyGyroMag variables*

    [1] "fbodygyromagmean" "fbodygyromagstd" 

*fBodyGyroJerkMag variables*

    [1] "fbodygyrojerkmagmean" "fbodygyrojerkmagstd"

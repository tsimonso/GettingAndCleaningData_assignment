Read me - additional material
=============================

Getting and Cleaning Data - Course project
==========================================

Human Activity Recognition Using Smartphones Dataset
----------------------------------------------------

### The experimental design

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

### The sensor signals

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used.

*In the ‘Inertial Signals’ folder, you can find 3 datasets containing
angular velocity data (one dataset for each axis), 3 datasets containing
total linear acceleration, and 3 datasets with linear acceleration where
the gravitational componant has already been removed.* *Each file has
10299 observations, each consisting of 128 readings (50Hz during a 2.56
second sample window) of the accelerometer and the gyroscope.* *As an
illustration of this, here are the dimensions of the dataset for the
total linear acceleration along the x-axis:*

    [1] 10299   128

*The values are in their original units. The linear accelerations are in
‘g’s and the angular velocities in ’rad/sec’.* *Here is, for example,
the range of the values for the gyroscopes around the x-axis (datasets
‘body\_gyro\_x\_train’ and ‘body\_gyro\_x\_test’):*

    [1] -4.733656  4.155473

### Data processing : 561 calculated variables

From each window, a vector of features was obtained by calculating 33
variables from the time and frequency domain.

#### The 20 calculated variables from the time domain:

-   The time domain variables were derived to obtain jerk signals
    -   body linear acceleration (tBodyAcc-XYZ) –&gt; body linear jerk
        (tBodyAccJerk-XYZ)
    -   angular velocity (tBodyGyro-XYZ) –&gt; angular jerk
        (tBodyGyroJerk-XYZ)
-   The magnitude of these three-dimensional signals were calculated
    using the Euclidean norm
    -   tBodyAccMag
    -   tGravityAccMag
    -   tBodyAccJerkMag
    -   tBodyGyroMag
    -   tBodyGyroJerkMag

#### The 13 calculated variables from the frequency domain:

-   A Fast Fourier Transform (FFT) was applied to some of these signals
    producing the following variables (Note the ‘f’ to indicate
    frequency domain signals):
    -   fBodyAcc-XYZ
    -   fBodyAccJerk-XYZ
    -   fBodyGyro-XYZ
    -   fBodyAccJerkMag
    -   fBodyGyroMag
    -   fBodyGyroJerkMag

#### The set of variables (17 in total) that were estimated from these signals

-   mean(): Mean value
-   std(): Standard deviation
-   mad(): Median absolute deviation
-   max(): Largest value in array
-   min(): Smallest value in array
-   sma(): Signal magnitude area
-   energy(): Energy measure. Sum of the squares divided by the number
    of values.
-   iqr(): Interquartile range
-   entropy(): Signal entropy
-   arCoeff(): Autorregresion coefficients with Burg order equal to 4
-   correlation(): correlation coefficient between two signals
-   maxInds(): index of the frequency component with largest magnitude
-   meanFreq(): Weighted average of the frequency components to obtain a
    mean frequency
-   skewness(): skewness of the frequency domain signal
-   kurtosis(): kurtosis of the frequency domain signal
-   bandsEnergy(): Energy of a frequency interval within the 64 bins of
    the FFT of each window.
-   angle(): Angle between to vectors.

The complete list of variables of each feature vector (33 x 17 = 561 in
total) is available in ‘features.txt’

*Here are the dimensions of the joint dataset (‘X\_test’ and
‘X\_train’)*

    [1] 10299   561

*All these variables are normalized and bounded within \[-1,1\]:*

    [1] -1  1

### The dataset assembled for this assignment

For this assignment, only 66 of the 561 variables have been used : the
means and standard deviations of the 33 signals. The datasets ‘X\_test’
and ‘X\_train’ were matched with the corresponding data about subjects
(‘subject\_train’ and ‘subject\_test’) and types of activity (‘y\_train’
and ‘y\_test’). Once extracted and renamed, the 66 variables were
averaged by subject (n=30) and activity (6 types). Whith the three added
variables (‘subjectid’, ‘group’ and ‘activity’), the resulting dataset
has a total of 69 variables. Each one of the 180 rows corresponds to a
different subject-activity combination.

*Dimensions of the tidy dataset produced for this assignment*

    [1] 180  69

*The range of values are averages of normalized values bounded within
\[-1,1\], therefore, their range is smaller*

    [1] -0.9976661  0.9745087

For each record the following is provided:

-   Its activity label.
-   An identifier of the subject who carried out the experiment.
-   the average value (by subject and type of activity) of means and
    standard deviations of the following variables:
    -   Triaxial body acceleration.
    -   Jerk signals for body linear acceleration and angular velocity
    -   Magnitude of the triaxial signals
    -   Fast Fourier Transform of these signals.

Read me
=======

Getting and Cleaning Data - Course project
==========================================

Human Activity Recognition Using Smartphones Dataset
----------------------------------------------------

This document explains how the ‘run\_analysis.R’ script works. (If you
are interested in more detailed explanations about the files provided
for this assignment and the data they contain, see
‘Readme\_additionalMaterial.md’.)

Script produced for this assignment:
------------------------------------

The file ‘run\_analysis.R’ is a script that perform the following tasks:
1) merges the training and the test sets to create one data set 2)
extracts the mean and standard deviation for each measurement. 3) labels
the variables and the values of the categorical variables. 4) creates a
second, independent data set with the average of each variable for each
activity and each subject.

To allow the script to run properly, follow the steps below:

1.  Download the zip file with the original datasets into the working
    directory
2.  Copy the script ‘run\_analysis.R’ to the working directory
3.  Run ‘run\_analysis.R’

Files produced or updated for this assignment:
----------------------------------------------

-   ‘tidydata.txt’ : Produced by the script ‘run\_analysis.R’. Contains
    180 rows, each representing one of the 6 activities by one of the 30
    subjects.
-   ‘beforeAfterVarlabels.txt’ : Produced by the script
    ‘run\_analysis.R’. Contains 66 rows, presenting the correspondance
    between the original variable names and the descriptive names chosen
    for this assignment.
-   ‘README.md’
-   ‘Codebook.md’ : with information about all the variables and
    summaries calculated, along with units.

Files provided for this assignment and processed to produce the above files:
----------------------------------------------------------------------------

-   ‘features.txt’: List of all features.
-   ‘activity\_labels.txt’: Links the class labels with their activity
    name.
-   ‘train/X\_train.txt’: Training set.
-   ‘train/y\_train.txt’: Training labels.
-   ‘train/subject\_train.txt’: Each row identifies the subject in the
    train group who performed the activity for each window sample.
-   ‘test/X\_test.txt’: Test set.
-   ‘test/y\_test.txt’: Test labels.
-   ‘test/subject\_test.txt’: Each row identifies the subject in the
    test group who performed the activity for each window sample.

Files containing the 3-axial raw signals
----------------------------------------

(used only by the script in ‘README.Rmd’ to illustrate how the data is
processed)

(available for the train and test data. Their descriptions are
equivalent.)

-   ‘train/Inertial Signals/total\_acc\_x\_train.txt’: The acceleration
    signal from the smartphone accelerometer X axis in standard gravity
    units ‘g’. Every row shows a 128 element vector. The same
    description applies for the ‘total\_acc\_x\_train.txt’ and
    ‘total\_acc\_z\_train.txt’ files for the Y and Z axis.
-   ‘train/Inertial Signals/body\_acc\_x\_train.txt’: The body
    acceleration signal obtained by subtracting the gravity from the
    total acceleration.
-   ‘train/Inertial Signals/body\_gyro\_x\_train.txt’: The angular
    velocity vector measured by the gyroscope for each window sample.
    The units are radians/second.

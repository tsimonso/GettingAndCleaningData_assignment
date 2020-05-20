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

1.  Downloading the data After checking if the required packages are
    installed and loaded, the script downloads the
    \[<a href="https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" class="uri">https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</a>\]
    (data) to a file titled “assignmentDataset.zip” in the working
    directory. The content is unzipped into a new folder named “UCI HAR
    Dataset” in the working directory.

2.  Preparing the variable names and value labels The script reads the
    list of features from the file “features.txt” (file path : “./UCI
    HAR Dataset/features.txt”). The script looks through all the
    variable names for the patterns “mean()” and “std()”. Those names
    are kept in memory in a character vector. Typos and special
    characters are removed from the variable names.

3.  Renaming the variables The variable names are simplified. The word
    ‘body’ is removed from all the variable names. There is no risk of
    ambiguity because the few other variables have ‘gravity’ in their
    name. In the frequency domain variables, the prefix ‘f’ is replaced
    by a more descriptive suffix ‘Frequency’. The prefix ‘t’ is removed
    from the time domain variables. Again, there can be no ambiguity
    because all the other variables have the ‘Frequency’ suffix. The
    words ‘mean’ and ‘std’ are moved to the end of the variable names
    The abbreviations ‘AccJerk’ ‘Gyro’ and ‘GyroJerk’ are replaced by
    ‘LinearJerk’, ‘AngularJerk’ and ‘AngularVelocity’. ‘GravityAcc’ is
    simplified to ‘Gravity’ ‘Acc’ is replaced by ‘LinearAcceleration’
    ‘Mag’ is replaced by ‘Magnitude’

A text file containing the original names and the corresponding new
variable names is produced under the name “beforeAfterVarlabels.txt” For
more detail about the variable names, including this table, see
‘Codebook.md’.

1.  Preparing the extraction The script uses the positions of the
    variables of interest in the list of features (from step 2) to
    calculate the position where each colum starts and ends in the text
    files containing the data. It also reads the activity labels from
    the “activity\_labels.txt” file (file path: “./UCI HAR
    Dataset/activity\_labels.txt”)

2.  Preparing the “train” and “test” data

Separately for the “train” and the “test” group, the data is read and
prepared.

-   The script reads the selected variables from ‘X\_train.txt’ (file
    path “./UCI HAR Dataset/train/X\_train.txt”) and labels them all.
-   The data about activity is read from ‘y.train.txt’ (file path :
    “./UCI HAR Dataset/train/y\_train.txt”) and formated as factor. The
    levels are labelled using the labels from step 4.
-   The data about subjects are read from ‘subject\_train.txt’ (file
    path : “./UCI HAR Dataset/train/subject\_train.txt”)
-   A new character vector named ‘group’ is created to receive the
    infroma about the group attribution (in this case “train”).
-   The script joins all the variables using the ‘cbind.data.frame’
    function. Records are identified by their row position only. The
    resulting data frame is kept in the working environment under the
    name ‘traindf’.

The same steps are used for the ‘test’ group to prepare the ‘testdf’
dataframe.

1.  The “testdf” data is appended under the “traindf” data. The variable
    ‘group’ is formated into ‘factor’. The resulting data frame has
    10299 lines (one line for each observation). It is kept in the
    working environment under the name ‘tidydata\_preparatory’.

2.  The movement data is averaged by subject and activity. The resulting
    data frame has 180 lines (one line for each subject-activity
    combination). It is kept in the working environment under the name
    ‘tidydata’. A text file is produced in the work directory (file path
    : “./tidydata.txt”).

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

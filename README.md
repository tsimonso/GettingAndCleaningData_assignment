==================================================================
Human Activity Recognition Using Smartphones Dataset
Getting and Cleaning Data - Week 4 Assignment
==================================================================
Thomas Simonson
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

For this assignment, means and standard deviations of the 128 readings within each of the 10299 sample windows were extracted from the datasets provided.
The mean of each of these variables were then calculated by subject and type of activity.

For each record it is provided
==============================
- Its activity label. 
- An identifier of the subject who carried out the experiment.
- the mean and standard deviation of the following variables:
        - Triaxial body acceleration.
        - Jerk signals for body linear acceleration and angular velocity
        - Magnitude of the triaxial signals 
        - Fast Fourier Transform of these signals. 

The dataset includes the following files:
=========================================

Files produced or updated for this assignment:
----------------------------------------------
- 'README.md'
- 'CodeBook.md' :  with information about all the variables and summaries calculated, along with units.
- 'run_analysis.R' : script that perform the following tasks:
        1) merges the training and the test sets to create one data set
        2) extracts the mean and standard deviation for each measurement.
        3) labels the variables and the values of the categorical variables.
        4) creates a second, independent data set with the average of each variable for each activity and each subject.
- 'tidydata.csv' : with 10299 observations, each representing a 2.56 sample window of one of the 6 activities performed by one of the 30 subject.
- 'tidymeans.csv' : with 180 rows, each representing one of the 6 activities by one of the 30 subjects.

Files provided for this assignment and processed to produce the above files:
----------------------------------------------------------------------------
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'train/subject_train.txt': Each row identifies the subject in the train group who performed the activity for each window sample. 
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'test/subject_test.txt': Each row identifies the subject in the test group who performed the activity for each window sample. 

To be complete, the dataset should also include the 3-axial raw signals that were provided but not used for this assignment:
----------------------------------------------------------------------------------------------------------------------------
(available for the train and test data. Their descriptions are equivalent.)

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

Notes: 
======
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

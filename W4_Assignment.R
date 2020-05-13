
## The submitted data set is TIDY
## The Github repo contains the required SCRIPTS
## GitHub contains a CODE BOOK that modifies and updates the available code book with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
## The README that explains the analysis files is clear and understandable.

##submit: 
##1) a tidy data set as described below, 
##2) a link to a Github repository with your script for performing the analysis, and 
##3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. 
##You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

## You should create one R script called run_analysis.R that does the following.
## Merges the training and the test sets to create one data set.
## Extracts only the measurements on the mean and standard deviation for each measurement.
## Uses descriptive activity names to name the activities in the data set
## Appropriately labels the data set with descriptive variable names.
## From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


## Packages
##---------
requiredPackages = c("downloader","readr")
for(p in requiredPackages){
        if(!require(p,character.only = TRUE)) install.packages(p)
        library(p,character.only = TRUE)
}

## Downloading the data
## --------------------
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data")){dir.create("./data")}
download(url, dest="./assignmentDataset.zip", mode="wb") 
unzip("./assignmentDataset.zip", exdir = ".")

## Preparing the "train" data
##---------------------------
## variables
features <- read.table("./UCI HAR Dataset/features.txt",sep=" ")        # reads the list of variables
varlabels<-grep("mean\\(\\)|std\\(\\)",features[,2],value=TRUE)         # keeps in memory the names of all the variables containing 'mean()' or 'std()'
varlabels<-tolower(gsub("\\(\\)|\\-","",varlabels))                     # removes upper case letters and special characters from the variable names
varpos<-grep("mean\\(\\)|std\\(\\)",features[,2])                       # keeps in memory the place of each of these variables
varstart<-sapply(varpos,function(x){x*16-15})                           # prepares extraction, calculating the positions where each column starts
varend<-sapply(varpos,function(x){x*16})                                # prepares extraction, calculating the positions where each column ends

## data from the accelerometer
X_train <- read_fwf(                                                    # reads the file and extracts our variables of interest, labelling them all
        file="./UCI HAR Dataset/train/X_train.txt",   
        fwf_positions(start=varstart,end=varend,col_names=varlabels))

## data about activity
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt",col.names = "activity")     # reads the data
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",sep=" ")          # reads the levels (1st column) and the labels (2d column)
y_train$activity <- factor(x=y_train$activity, levels=activity_labels[,1], labels = activity_labels[,2])        # changes the format of the variable to 'factor' and labels the levels

## data about subjects
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt",col.names = "subjectid")

## data about group
group<-rep("train",length(subject_train$subjectid))                     # creates the variable that will contain the information about the group (train vs test)

## merging it all
traindf<-cbind.data.frame(subject_train,group,y_train,X_train)          # There is no key to merge the files, records are identified by their row position only -> we will use 'cbind'

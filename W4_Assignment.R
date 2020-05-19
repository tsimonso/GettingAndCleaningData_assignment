## GETTING AND CLEANING DATA - COURSE PROJECT
## PREPARING THE TIDY DATASET
## ==========================

##---------
## Packages
## ---------
requiredPackages = c("downloader","readr","reader", "dplyr", "data.table")
for(p in requiredPackages){
        if(!require(p,character.only = TRUE)) install.packages(p)
        library(p,character.only = TRUE)
}
rm(p)
## --------------------
## Downloading the data
## --------------------
url<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("./data")){dir.create("./data")}
download(url, dest="./assignmentDataset.zip", mode="wb")
unzip("./assignmentDataset.zip", exdir = ".")

##----------------------------------------------
## Preparing the variable names and value labels
##----------------------------------------------
features <- read.table("./UCI HAR Dataset/features.txt",sep=" ")        # reads the list of variables
varlabels<-grep("mean\\(\\)|std\\(\\)",features[,2],value=TRUE)         # keeps in memory the names of all the variables containing 'mean()' or 'std()'
originalvarlabels<-varlabels
varlabels<-gsub("\\(\\)|\\-","",varlabels)                              # removes special characters from the variable names
varlabels<-gsub("BodyBody","Body",varlabels)                            # corrects a mistake in some variables names where 'body' was repeated twice.

## renaming the variables
##-----------------------

## 1) remove the word 'body' from all the variable names (No ambiguity: all the other variables are named 'gravity')
varlabels<-gsub("Body","",varlabels)

## 2) for the frequency domain variables, replace the f prefix with a 'Frequency' suffix
fvarlabels<-grep("^f",varlabels,value=TRUE)
fvarlabels<-gsub("^f","",fvarlabels)
fvarlabels<-paste(fvarlabels,"Frequency",sep="")
varlabels[grep("^f",varlabels)]<-fvarlabels
rm(fvarlabels)

## 3) removing the 't' prefix for the time domain variables (No ambuguity: all other variables are named 'Frequency')
varlabels<-gsub("^t","",varlabels)

## 4) adding 'mean' and 'std' suffixes
meanvarlabels<-grep("mean",varlabels,value=TRUE)
meanvarlabels<-gsub("mean","",meanvarlabels)
meanvarlabels<-paste(meanvarlabels,"mean",sep="")
varlabels[grep("mean",varlabels)]<-meanvarlabels
rm(meanvarlabels)

stdvarlabels<-grep("std",varlabels,value=TRUE)
stdvarlabels<-gsub("std","",stdvarlabels)
stdvarlabels<-paste(stdvarlabels,"std",sep="")
varlabels[grep("std",varlabels)]<-stdvarlabels
rm(stdvarlabels)

## 5) Using descriptive names
varlabels<-gsub("AccJerk","LinearJerk",varlabels)
varlabels<-gsub("GyroJerk","AngularJerk",varlabels)
varlabels<-gsub("Gyro","AngularVelocity",varlabels)

## 6) Simplifying where possible 
varlabels<-gsub("GravityAcc","Gravity",varlabels)

## 7) Using descriptive names
varlabels<-gsub("AccX","LinearAccelerationX",varlabels)
varlabels<-gsub("AccY","LinearAccelerationY",varlabels)
varlabels<-gsub("AccZ","LinearAccelerationZ",varlabels)
varlabels<-gsub("AccMag","LinearAccelerationMag",varlabels)
varlabels<-gsub("Mag","Magnitude",varlabels)

## 8) Exporting a table containing the original and new variable names
beforeAfterVarlabels<-cbind(originalvarlabels,varlabels)
beforeAfterVarlabels%>%
        conv.fixed.width()%>%
        write.table(file="./beforeAfterVarlabels.txt",row.names=FALSE,col.names=FALSE,quote=FALSE)

## Preparing the extraction
##-------------------------
varpos<-grep("mean\\(\\)|std\\(\\)",features[,2])                       # keeps in memory the place of each of these variables in the list of fetures provided
varstart<-sapply(varpos,function(x){x*16-15})                           # prepares extraction, calculating the positions where each column starts in the txt file.
varend<-sapply(varpos,function(x){x*16})                                # prepares extraction, calculating the positions where each column ends.

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt",sep=" ")          # reads the levels (1st column) and the labels (2d column) for the activity data
activity_labels<-rename(activity_labels, levels=V1, labels=V2)

##---------------------------
## Preparing the "train" data
##---------------------------
## data about movements
X_train <- read_fwf(                                                    # reads the file and extracts our variables of interest, labelling them all
        file="./UCI HAR Dataset/train/X_train.txt",   
        fwf_positions(start=varstart,end=varend,col_names=varlabels))

## data about activity
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt",col.names = "activity")                             # reads the data
y_train$activity <- factor(y_train$activity, levels=activity_labels[,1], labels = activity_labels[,2])        # changes the format of the variable to 'factor' and labels the levels

## data about subjects
subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt",col.names = "subjectid")

## data about groups
group<-rep("train",length(subject_train$subjectid))                     # creates the variable that will contain the information about the group (train vs test)

## merging it all
traindf<-cbind.data.frame(subject_train,group,y_train,X_train)          # There is no key to merge the files, records are identified by their row position only -> we will use 'cbind'

##---------------------------
## Preparing the "test" data
##---------------------------
## data about movements
X_test <- read_fwf(                                                     # reads the file and extracts our variables of interest, labelling them all
        file="./UCI HAR Dataset/test/X_test.txt",   
        fwf_positions(start=varstart,end=varend,col_names=varlabels))

## data about activity
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt",col.names = "activity")                                # reads the data
y_test$activity <- factor(y_test$activity, levels=activity_labels[,1], labels = activity_labels[,2])          # changes the format of the variable to 'factor' and labels the levels

## data about subjects
subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt",col.names = "subjectid")

## data about groups
group<-rep("test",length(subject_test$subjectid))                       # creates the variable that will contain the information about the group (train vs test)

## merging it all
testdf<-cbind.data.frame(subject_test,group,y_test,X_test)              # There is no key to merge the files, records are identified by their row position only -> we will use 'cbind'

##-----------------------------------------------------
## Appending, exporting and cleaning up the environment
##-----------------------------------------------------
# tidydata_preparatory<-as.data.frame(bind_rows(traindf,testdf)) 
tidydata_preparatory<-bind_rows(traindf,testdf)                                     # Appending the "test" data under the "train" data
# Appending the "test" data under the "train" data
tidydata_preparatory$group<-factor(tidydata_preparatory$group,order = TRUE, levels =c("train","test"))
rm(subject_test,subject_train,testdf,traindf,X_test,X_train,y_test,y_train)             # Removing unnecessary objects from the work environment
rm(group,varpos,varstart,varend,varlabels, originalvarlabels)

## --------------------------------------------------------------
## Averaging by subject and activity, and exporting as a txt file
## --------------------------------------------------------------
varnames<-names(tidydata_preparatory)
selectedvars<-varnames[4:69]
tidydata_preparatory %>%
        group_by(subjectid,group,activity) %>%
        summarise_at(selectedvars,mean)%>%
        as.data.frame()->tidydata
tidydata%>%
        conv.fixed.width()%>%
        write.table(file="./tidydata.txt",row.names=FALSE,col.names=TRUE,quote=FALSE)

##------------------------------------
## cleaning up and saving my workspace
##------------------------------------
rm(activity_labels, requiredPackages,selectedvars,varnames)
save.image("GettingAndCleaningData_assignment_myWorkSpace.RData")






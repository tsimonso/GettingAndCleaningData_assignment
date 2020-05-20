## GETTING AND CLEANING DATA - COURSE PROJECT
## OPENING THE TIDY DATAFILE IN R
## ==============================

##---------
## Packages
##---------
requiredPackages = c("reader","dplyr","readr","data.table")
for(p in requiredPackages){
        if(!require(p,character.only = TRUE)) install.packages(p)
        library(p,character.only = TRUE)
}
rm(p)

##---------------------------------
## Loading the 'tidydata' txt file
##---------------------------------
## Reading the data
tidydata<-as.data.frame(reader("./tidydata.txt", one.byte = FALSE)) # 'reader' does not recognize the first row as variable names, even when I specify "header=TRUE".

## Renaming the variables
oldvarnames<-names(tidydata)
read_lines("./tidydata.txt",n_max=1)%>%
        strsplit(" ")%>%
        unlist()->newvarnames

tidydata %>%
        setnames(old = oldvarnames, new = newvarnames)

## Formatting the variables
tidydata[-c(1:3)] <- sapply(tidydata[-c(1:3)],as.numeric) # converts all variables but the first three to 'numeric'
tidydata$group<-factor(tidydata$group,order = TRUE, levels =c("train","test")) # converts the variable 'group' to 'factor', with the same key as before.
tidydata$activity<-factor(tidydata$activity,order = TRUE, levels=c("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS","SITTING","STANDING","LAYING")) # converts the variable 'activity' to 'factor', with the same key as before.

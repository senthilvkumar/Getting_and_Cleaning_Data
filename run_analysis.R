### Step 1: Merges the training and the test sets to create one data set. ###

## Assumption: current directory is contains test and train folders.

## Get into test data directory
setwd("test")

## Read test data set
sub1<-read.table("subject_test.txt")   
X1<-read.table("X_test.txt")
y1<-read.table("y_test.txt")

## Bind the measurements, activity and subject test data
testdat<-cbind(X1,y1,sub1)              

## Get into training data
setwd("../train")                                

## Read training data set
sub2<-read.table("subject_train.txt")  
X2<-read.table("X_train.txt")
y2<-read.table("y_train.txt")
              
## Bind the measurements, activity and subject training data
traindat<-cbind(X2,y2,sub2)
      
## Bind the test and training data sets
fulldat<-rbind(testdat,traindat)
                                      
## Return back to original directory for further processing
setwd("..") 

### Step 2: Extract only mean and std for each measurement. ###
                           
## Read the feature labels
featdat<-read.table("features.txt")
                       
## Identify those that contain "mean" in their label
meanset<-grep("mean",featdat$V2)
         
## Identify those that contain "meanFreq" in their label
meanFreqset<-grep("meanFreq",featdat$V2)
               
## Use set difference to isolate only those that contain "mean"
meanlist<-setdiff(meanset,meanFreqset)
                               
## Identify those that contain "std" in their label
stdlist<-grep("std",featdat$V2)
                               
## Combine those having "mean" only and "std" using set union
trimlist<-union(meanlist,stdlist)

## Extract only those columns which are "mean" and "std" variables,
## Along with the last two columns which are activity and subject, to get the trimmed data
trimdat<-cbind(fulldat[,trimlist],fulldat[,ncol(X1)+1],fulldat[,ncol(X1)+2])
                                                 
## Discard the full data since it occupies lot of memory
rm(fulldat)

## Add activity and subject lables for the last two columns
trimcol<-ncol(trimdat)
colnames(trimdat)[trimcol-1]<-"Activity"                 
colnames(trimdat)[trimcol]<-"Subject"

### Step 3: Use activity names to name the activities in the data set. ###

## Read in the activity labels and introduce them as factors into the trimmed data
activlist<-read.table("activity_labels.txt")
trimdat$Activity<-factor(trimdat$Activity,labels=activlist[,2])

### Step 4: Label the data set with descriptive variable names ###
                  
## Read the list of features
varlist<-read.table("features.txt")
          
## Ensure that they are characters before string operations
trimvar<-as.character(varlist[trimlist,2])

    
## Remove the leading character "t" (for training data)
trimvar<-substring(trimvar,2,nchar(trimvar))
                     
## Remove () in the middle of the labels
trimvar<-gsub("\\(\\)","",trimvar)
       
## Assign these as the column names in the trimmed data
colnames(trimdat)[1:(trimcol-2)]<-trimvar 

## List out the variables for code book documentation
write.table(trimvar,file="codebk.md")

### Step 5: Tidy data set as averages of each variable per activity & subject.###

## Use aggregate to compute mean activity-wise and subject-wise
tidydat<-aggregate(trimdat[,1:(trimcol-2)],by=list(trimdat$Activity,trimdat$Subject),mean)
 
## To set the column names of activity and subject
colnames(tidydat)[1]<-"Activity" 
colnames(tidydat)[2]<-"Subject"

## Saving the final tidy data into a text file
write.table(tidydat,file="tidy_data.txt",row.names=F)









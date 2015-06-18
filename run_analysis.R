## setwd("~/R/RCleaningData")
## Read in the features table
## Adjust features table to include only those columns that include mean() or std()
f_r<- read.table("UCI HAR Dataset/features.txt", col.names=c("col_num", "col_name" ), stringsAsFactors=FALSE)
gr1<-grep("mean[^F]|std", f_r$col_name)
features<- f_r[gr1,]
features$col_name<- gsub('\\(\\)', "", features$col_name, perl=TRUE)


## Read in the test table and auxillaries
##
tmp<- read.table("UCI HAR Dataset/test/X_test.txt")
tmp_data<-tmp[,features$col_num]
colnames(tmp_data)<- features$col_name
tmp_sub<- read.table("UCI HAR Dataset/test/subject_test.txt", col.names=c("subject"))
tmp_act<- read.table("UCI HAR Dataset/test/y_test.txt", col.names=c("activity"))
tmp_act[,'activity']<- factor(tmp_act[,'activity'],  labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
dataA<- cbind(tmp_sub, tmp_act, tmp_data)


## Read in the training table and auxillaries
##
tmp<- read.table("UCI HAR Dataset/train/X_train.txt")
tmp_data<-tmp[,features$col_num]
colnames(tmp_data)<- features$col_name
tmp_sub<- read.table("UCI HAR Dataset/train/subject_train.txt", col.names=c("subject"))
tmp_act<- read.table("UCI HAR Dataset/train/y_train.txt", col.names=c("activity"))
tmp_act[,'activity']<- factor(tmp_act[,'activity'],  labels=c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"))
dataB<- cbind(tmp_sub, tmp_act, tmp_data)

## Join into 1 dataset
## remove tmp variables
##
activityRecognition<- rbind(dataA, dataB)
rm(list=ls(pattern="tmp"))

## Build new table with means
##
nc<- ncol(activityRecognition)
cnames<-colnames(activityRecognition)[3:nc]
uniqueSubjects<-sort(unique(activityRecognition$subject))
uniqueActivities<- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

## make empty dataframe
nodata <- data.frame(Subject=integer(0), Activity=character(0), stringsAsFactors=FALSE)
nodata2<- data.frame(setNames(replicate(66,numeric(0), simplify = F), cnames))
means_df<- cbind(nodata, nodata2)

## loops to calculate means and write data
current_row<- 0
for (i in 1:length(uniqueSubjects)){
    for (j in 1:length(uniqueActivities)){
        current_row<- current_row + 1
        means_df[current_row, 1]<- uniqueSubjects[i]
        means_df[current_row, 2]<- uniqueActivities[j]
        tmp<- filter(activityRecognition, subject==uniqueSubjects[i], activity==uniqueActivities[j])
        for (k in 1:length(cnames)){
            means_df[current_row, 2 + k]<- mean(tmp[,2 + k])
        }
    }
}

filepath<- "summarySamsungActivity.txt"
write.table(means_df, filepath, row.name=FALSE)



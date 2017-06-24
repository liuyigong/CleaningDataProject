library(dplyr)
train<-cbind(read.table("UCI HAR Dataset/train/subject_train.txt",col.names = "subject"),read.table("UCI HAR Dataset/train/y_train.txt",col.names = "activity"),read.table("UCI HAR Dataset/train/X_train.txt"))
test<-cbind(read.table("UCI HAR Dataset/test/subject_test.txt",col.names = "subject"),read.table("UCI HAR Dataset/test/y_test.txt",col.names = "activity"),read.table("UCI HAR Dataset/test/X_test.txt"))
features<-read.table("UCI HAR Dataset/features.txt")
label<-read.table("UCI HAR Dataset/activity_labels.txt")
SumData <- rbind(train,test)
names(SumData)[3:length(names(SumData))]<-as.vector(features[,2])
SumData<-cbind(SumData[,1:2],SumData[,grepl("mean\\()|std()",names(SumData))])
SumData$activity<-factor(SumData$activity,labels = as.vector(label[,2]))
AveSumData <- SumData %>%
  group_by(subject,activity) %>%
  summarize_all(funs(mean))
rm(train,test,features,label)
write.table(AveSumData,file = "AveData.txt", row.names = FALSE)
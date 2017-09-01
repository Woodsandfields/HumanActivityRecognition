
#### UNIQUE FUNCTION TO LAUNCH AFTER SOURCING THIS FILE: 
# > run_analysis()


### The run_analysis function aims at combining, tidying, and summarizing together 
### both test set and train sets from UCI HAR DataSet


library(dplyr)
library(tidyr)

run_analysis <- function(){

        #### READING THE DATA ####
        
        #loading general data
        activity_labels <- read.table("./Dataset/UCI HAR Dataset/activity_labels.txt")
        features <- read.table("./DataSet/UCI HAR DataSet/features.txt")
        
        #loading test data
        subject_test <- read.table("./DataSet/UCI HAR DataSet/test/subject_test.txt")
        X_test <- read.table("./DataSet/UCI HAR DataSet/test/X_test.txt")
        Y_test <- read.table("./DataSet/UCI HAR DataSet/test/Y_test.txt")
        
        #loading train data
        subject_train <- read.table("./DataSet/UCI HAR DataSet/train/subject_train.txt")
        X_train <- read.table("./DataSet/UCI HAR DataSet/train/X_train.txt")
        Y_train <- read.table("./DataSet/UCI HAR DataSet/train/Y_train.txt")
        
        
        # ###### LABELING DATA FRAMES for subject and activities columns #######
        # Has been put here for readability and makes it easier to rename others X columns in next steps  
        
         names(subject_test) <- "subject"
         names(Y_test) <- "activities"
        
         names(subject_train) <- "subject"
         names(Y_train) <- "activities"
        
        
        ### MERGING TRAIN & TEST DATA SETS  ####
        
        test_set <- cbind(subject_test, Y_test, X_test) # assembling test set columnwise
        train_set <- cbind(subject_train, Y_train, X_train) # assembling train set columnwise
        data_set1 <- rbind(test_set, train_set)   #merging both row-wise
        
        
        #### LABELING THE 'ACTIVITIES' COLUMN WITH FULL NAMES INSTEAD OF INDEXES #######
        
        data_set1$activities <- sub (1, "WALKING", data_set1$activities)
        data_set1$activities <- sub (2, "WALKING_UPSTAIRS", data_set1$activities)
        data_set1$activities <- sub (3, "WALKING_DOWNSTAIRS", data_set1$activities)
        data_set1$activities <- sub (4, "SITTING", data_set1$activities)
        data_set1$activities <- sub (5, "STANDING", data_set1$activities)
        data_set1$activities <- sub (6, "LAYING", data_set1$activities)
        
        
        ##### EXTRACTING MEANS AND STANDARD DEVIATIONS COLUMNS ONLY  #######
        
        my_features <- grep(pattern = "[mM]ean|[sS]td", x= features$V2, value = FALSE) # checking on features data frame for mean/std
        dataset_features <- my_features+2                       #adding 2 to indices (because of cols subject+activities in dataset_1)
        data_set1 <- data_set1[, c(1,2, dataset_features)]      #subsetting cols about mean and standard deviation only in data_set1
        

                
        #### ARRANGING LABELS FOR MEAN AND STD #######
        
        
        #### extracting selected feature names and adding them
        my_features_names <- as.character(features$V2[my_features]) 
        names(data_set1)[3:88] <- my_features_names
        
        #### getting names tidier by removing some symbols (yet keeping capitalized letters for readability)
        colnames(data_set1) <- gsub(pattern ="\\()|-", "", colnames(data_set1)) 
                                 
        
        ###################### CREATING SECOND SET ##############################
        
        # creating an independent tidy data set 
        # with the average of each variable for each activity and each subject
        
        data_set2 <- data_set1 %>% 
                        arrange(activities, subject)%>%
                        group_by(activities, subject)%>%
                        summarize_all(mean) # dplyr::summarize_all runs function on all (non-grouping) columns 
            
        
        ######### UNCOMMENT NEXT LINE TO SAVE THE CREATED DATA TO A FILE  ########         
        
        #write.table(data_set2, "tidy_data.csv", sep = ",", row.names = FALSE, col.names = colnames(data_set2)) 

}

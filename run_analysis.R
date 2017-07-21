#tidyDataTable <- NULL
library(dplyr)
library(data.table)

newMeasurementTable <- function() {
        
        downloadData <- function() {
                fileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
                dataDir <- "downloadedData"
                destFile <- paste(dataDir, "dataset.zip", sep = "/") 
                
                # create a directory to hold downloaded data
                if (!file.exists(dataDir)) {
                        dir.create(dataDir)
                }
                
                # check if downloaded before
                if (!file.exists(destFile)) {
                        download.file(fileURL, destFile, method = "curl")
                } 
                
                # check if unzipped
                if (file.exists(destFile)) {
                        unzip(destFile)
                }
        }
        
        filepath <- "./UCI HAR Dataset/"
        subjects <- c("X", "subject", "y")

        ## 1. Merges the training and the test sets to create one data set.
        loadData <- function () {
                
                downloadData()
                
                suffix <- c("test","train")

                combined <- NULL
                master <- NULL
                
                for (s in suffix) {
                        # load X measurement, subject and y
                        for (i in subjects) {
                                destFile <- paste(filepath, s, '/', i, '_', s, '.txt', sep='')
                                #print(destFile)
                                
                                if (file.exists(destFile)) {
                                        print (paste(destFile, "Found", sep=" "))
                                        data <- read.delim(destFile, header = FALSE, sep = "")

                                        # if it is the first data frame, use it
                                        # otherwise, append it
                                        if (length(combined) == 0) {
                                                combined <- data  
                                        } else {
                                                combined <- cbind(combined, data)
                                        }
                                        
                                } else {
                                        print ("No such file.")
                                }
                                
                        }
                        
                        master <- rbind(master, combined)
                        combined <- NULL
                }
                
                as.data.frame(master)
                
        }
        
        ## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
        extractData <- function() {
                
                master <- loadData()
                
                # read labels
                labels <- read.delim(paste(filepath,"features.txt",sep=""), header = FALSE, sep = "")
                
                el <- c("subject","activityType")
                
                # create new dataframe for two more rows and add to list of labels
                newitems <- data.frame(V1 = c(nrow(labels)+1,nrow(labels)+2), V2 = el)
                labels <- rbind(labels, newitems)
                # rename columns
                colnames(master) <- labels[,2]
                
                # grep mean and std only
                labelsToExtract <- labels[grep("(*mean*)|(*std*)|subject|activityType",labels$V2),]
                extractedData <- master[,labelsToExtract$V1]
                
        }
        
        nameTheActivity <- function() {
                data <- extractData()
                # read labels
                activityLabels <- read.delim(paste(filepath,"activity_labels.txt",sep=""), header = FALSE, sep = "")
                #print(activityLabels)
                
                # replace activity type with descriptive names
                newData <- left_join(data, activityLabels, c("activityType" = "V1"))
                
                # rename column heading
                setnames(newData, old="V2", new="activity")
                newData
        }

        # get the table with merged data and proper column labels
        # calculate the mean of every column group by subject and activity
        scriptDir <- getSrcDirectory(newMeasurementTable)
        setwd(scriptDir)
        data <- nameTheActivity()
        #str(data)
        summaryData <- data %>%
                select(-activityType) %>%
                group_by(subject, activity) %>% 
                summarise_all(funs(mean))
}

#tidyDataTable <- newActivityTable()

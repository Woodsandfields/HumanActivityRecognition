# HAR - HumanActivityRecognition
Cleaning Data for HAR with smartphones datasets. 

Here you will find:
- Files in this repository (a detailed list)
- What you need to know about the files
- Some information about the way the data were processed

Full description of the data and how they originated is here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To format this repository I used the guide for datasharing provided by @jtleek : https://github.com/jtleek/datasharing 

# Files in this repository

## summary
- **README.md** : this file you are currently reading
- **CodeBook.md** : what you need to know about the variables
- **data_set1.csv** : the first data set created through this project
- **data_set2.csv** : the second data set created through this project
- **rawData.md**: a link to a heavy zip.file containing the set of data originally used for this project 
- **tidyData.csv** : contains the  data_set as created by the 'runanalysis.R' file in the context of this project
- **run_analysis.R** : the script in R created for this project in order to get to the final tidyData.csv file 

## What you need to know about the files

### README.md
Gives detail about the different files contained in this repository as well as the choices made regarding the transformation of data.

### CodeBook.md 
Explains the way the presented data were collected, and details each variable.

### data_set1.csv
This file is too big for github to present it in a easily readable way, so you will have to import it in order to read. Yet, you might just want to go to *data_set2.csv* instead, as this second file emanates from this one and presents the end result, - that one being easy to read as a nice tidy table in github just by clicking on it (see *data_set2.csv*).  
Anyway, *data_set1.csv* has been created through the R script *run_analysis.R* (also present in this repository). It merges the *X train set* and *X test set* from the raw data and makes them readable by adding all necessary information from the original folder through appropriate row and column names, especially detailing subjects and activities, and keeping for each observation the variable information only when related to means and standard deviation. It might constitute a sound basis for further investigation on the whole data set.

### data_set2.csv
Just as for *data_set1.csv*, this file has been created through the *run_analysis.R* script. It goes from the data created as data_set1 (see *data_set1.csv*). You can glimpse into it just by clicking on the github link.
It gives a summary of the data by activity and subject for the chosen mean and standard deviation information. More detail will be found in the CodeBook.

### run_analysis.R
This is the script that led from raw data to the two final data sets (data_set1 and data_set2). It has been issued for this project.
This script runs in R. Once you have loaded it into a folder together with the unzipped raw data (see *rawdata.md*), you can launch it in an R environnement. Then, just type `run_analysis()` and press 'enter' in the console: that will call the function processing the data. Also, if you want to save the two newly created data sets as separated files in the current folder (and thus get yourself *dat_set1.csv* and *data_set2.csv* as presented here), then you have to uncomment the last two lines of the script (i.e. remove the hashtags at the start of the two last lines). 

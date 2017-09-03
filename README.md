# HAR - HumanActivityRecognition
Cleaning Data for HAR with smartphones datasets. 

Here you will find:
- Files in this repository (a detailed list)
- More information about the files
- Some information about the way data were processed

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

## More information about the files

### README.md
Gives detail about the different files contained in this repository as well as the choices made regarding the transformation of data.

### CodeBook.md 
Explains the way the presented data were collected and details each variable.

### data_set1.csv
This file is created through the R script *run_analysis.R* (also present in this repository). It merges the *X train set* and *X test set* from the raw data and makes them readable by adding all necessary information from the original folder through appropriate row and column names, especially detailing subjects and activities, and keeping for each observation the variable information only when related to means and standard deviation.

### data_set2.csv
Just like for data_set1, this file has been created through the *run_analysis.R* script. It goes from the data created as data_set1 (see *data_set1.csv*). 

### run_analysis.R
This is the script that led from raw data to the two final data sets (data_set1 and data_set2).
This script runs in R. Once you have loaded it into a folder together with the unzipped raw data (see *rawdata.md*), you can launch it in an R environnement. Then just type `run_analysis()` then press 'enter' in the console: that will call the function processing the data.
In addition, if you want to save the two newly created data sets as separated files in the current folder, then you have uncomment the last two lines of the script (i.e. remove the hashtags at the start of the two last lines). 

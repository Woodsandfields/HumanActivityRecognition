# HAR - HumanActivityRecognition
Cleaning Data for HAR with smartphones datasets. 

Full description of the data and how they originated is here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To format this repository I used the guide for datasharing provided by @jtleek : https://github.com/jtleek/datasharing 

# Files in this repository:

## summary
- **README.md** : this file you are currently reading
- **tidyData.csv** : contains the  data_set as created by the 'runanalysis.R' file in the context of this project
- **rawData.md**: a link to a heavy zip.file containing the set of data originally used for this project 
- **run_analysis.R** : the script in R created for this project in order to get to the final tidyData.csv file 
- **codebook.md** : what you need to know about the variables

## more detail
### run_analysis.R
This is the script that led from raw data to the two final data sets (data_set1 and data_set2).
This script runs in R. Once you have loaded it into a folder together with the unzipped raw data (see rawdata.md), you can launch it in an R environnement. Then just type `run_analysis()` then press 'enter' in the console: that will call the function processing the data.
In addition, if you want to save the two newly created data sets as separated files in the current folder, then you have uncomment the last two lines of the script (i.e. remove the hashtags at the start of the two last lines). 

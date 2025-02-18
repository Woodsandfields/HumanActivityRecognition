# HAR - HumanActivityRecognition
Cleaning Data for HAR with smartphones datasets. 

This repo represents **my submission for the final assignment on the Data Cleaning course in R by the Johns Hopkins University with Coursera** in the context of the data specialization curriculum. I had to rearrange, clean, and start processing two correlated datasets containing smartphone data collected from a group of smartphone owners. The ultimate goal of this data collection was to find out from the data how to identify the subjects' current activity (sitting, standing, lying, walking, etc.) and see if the emitted hypothesis about how to classify them was correct.  

Here below you will find:
- Files in this repository (a detailed list)
- What you need to know about the files
- Some information about the way the data were processed
- license information and more about context

Full description of the data and how they originated is here:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

To format this repository I used the guide for datasharing provided by @jtleek : https://github.com/jtleek/datasharing 

## Files in this repository

- **README.md** : this file you are currently reading
- **CodeBook.md** : what you need to know about the experiment and the variables
- **data_set1.csv** : the first data set created: observations from the original project for mean and standard deviation
- **data_set2.csv** : the second data set created through this project, summarizing the first created data set.
- **rawData.md**: link to the series of txt files with the original data (too heavy to upload to GitHub) 
- **run_analysis.R** : the script in R made for this project in order to get to the two new data sets. 

## What you need to know about the files

### README.md
Gives detail about the different files contained in this repository as well as the choices made regarding the transformation of data.

### CodeBook.md 
Explains the way the presented data were collected, and details each variable.

### data_set1.csv
*data_set1.csv* has been created through the R script *run_analysis.R* (also present in this repository). It merges the *X train set* and *X test set* from the raw data and makes them readable by adding all necessary information from the original folder through appropriate row and column names, especially detailing subjects and activities, and keeping for each observation the variable information only when related to means and standard deviation. It might constitute a sound basis for further investigation on the whole data set.

NB: This file is too big for GitHub to present it in a easily readable way, so you will have to import it in order to read. However, you might just want to go to *data_set2.csv* instead, as this second file emanates from this one and presents the end summary results while being easier to read as a nice tidy table in github just by clicking on it (see *data_set2.csv*).  

### data_set2.csv
Just as for *data_set1.csv*, this file has been created through the *run_analysis.R* script. It displays a summary of the data by activity and subject for the chosen mean and standard deviation variables. You can glimpse into it just by clicking on the GitHub link.

### run_analysis.R
This is the script that led from raw data to the two final data sets (*data_set1* and *data_set2*). This script runs in R. Once you have loaded it into a folder together with the unzipped raw data (see *rawdata.md*), you can launch it in an R environnement. Then, just type `run_analysis()` and press 'enter' in the console: that will call the function processing the data. 

NB: If you want to save the two newly created data sets as separated files *data_set1.csv* and *data_set2.csv* to your current folder (and thus get for yourself through processing *data_set1.csv* and *data_set2.csv* as presented here), then all you you have to do is uncomment the last two lines of the script (i.e. remove the hashtags at the start of the two last lines). 


## Some information about the way the data were processed

The raw data were assembled in a readable way for convenient processing and analysis by combining all necessary features: activities, subjects, and variables. Original test and train sets have been merged in order to get a complete view of all the data that were collected. Only mean and standard deviation as provided by the original variables in the raw data have been kept, for a total of 86 variables. Because of this choice, specific information contained in the inertial signal files from the raw data have been set aside.

Activity labels have been put first with the goal of getting a view by activity first rather than by subject first when coming to the final summary as it makes more sense. Subjects have been reordered by identifier from 1 to 30 from the test group and the train group together. Activity coded labels have been replaced by original names like "STANDING" or "SITTING", etc. Variable names have been slightly rearranged for scripting convenience as well as for compliance with the recommandations issued by the Johns Hopkins University data science department.

In *data_set1.csv*, all observations for each activity and subject have been kept (when related to mean and standard deviation, as said above). In *data_set2.csv*, a summary of those has been made by giving the average for each variable by activity and subject.

If you want information about the variables themselves and how the original experiment was conducted, please refer to the CodeBook.


## License information and more

### Context of this project

This project has been created for the final assignment of the Data Cleaning course made for Coursera by Johns Hopkins University within its data specialization track.

 ### License and more about context 

Use of this dataset in publications must be acknowledged by additionally referencing the following publication where the raw data come from. [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

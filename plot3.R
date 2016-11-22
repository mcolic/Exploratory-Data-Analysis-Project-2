############################################
# Author: Medina Colic
# Course: Exploratory Data Analysis
# Assignment: Course Project 2
############################################

################################################################################
# Question 2
# Have total emissions from PM2.5 decreased in the Baltimore City, Maryland
# (𝚏𝚒𝚙𝚜 == "𝟸𝟺𝟻𝟷𝟶") from 1999 to 2008? Use the base plotting system to make a
# plot answering this question.
################################################################################

# Reading the two files using readRDS() function

NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

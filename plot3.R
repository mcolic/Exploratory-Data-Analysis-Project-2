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

# Subsetting the Baltimore City, MD
MD <- subset(NEI, fips == 24510)
MD$year <- factor(MD$year, levels=c('1999', '2002', '2005', '2008'))

library(ggplot2)

# Initiating the plot
png('plot3.png', width=800, height=500, units='px')

# Filling the plot
ggplot(data=MD, aes(x=year, y=log(Emissions))) + facet_grid(. ~ type) + guides(fill=F) +
    geom_boxplot(aes(fill=type)) + stat_boxplot(geom ='errorbar') +
    ylab(expression(paste('Log', ' of PM'[2.5], ' Emissions'))) + xlab('Year') +
    ggtitle('Emissions per Type in Baltimore City, MD') +
    geom_jitter(alpha=0.10)
dev.off()

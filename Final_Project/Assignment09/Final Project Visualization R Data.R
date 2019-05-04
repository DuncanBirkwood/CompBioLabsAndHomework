#Final Project - Duncan Birkwood

#Import the data set

Kalamazoo <- read.csv("Kalamazoo flora extinction_dataset.csv")

#Load the packages necessary to complete the work

library(ggplot2)
library(tidyverse)
library(cowplot)

#Create a barplot in ggplot2 for each of the five species characteristics being analyzed (Community, Growth Form, Life History, Native Status, and Rarity) and scale them by "Status" (in reference to whether or not they are extinct)

#The goal of this barplot is to scale each species characteristic to 100% to highlight which of the species characteristics coincide with the highest rates of extinction

#The comments below break down the additonal changes beyond just using ggplot2 and are marked by ##

##scale_fill_discrete(name="Extinction\nStatus", labels=c("Extinct","Alive")) This code creates a title for the legend and labels each variable on the legend

##scale_y_continuous(labels=scales::percent), This portion of code scales the y-axis by percent instead of proportion for increased clarity

## ylab("Percentage"), This portion of code labels the y-axis with "Percentage" instead of the default label "value"

##theme(axis.text.x= element_text(angle=90)), This portion of code tilts the x-axis text 90 degrees so each species characteristic name can be seen in the expanded plot grid

#Create a ggplot for the Community species characteristic
pCommunity <- ggplot(Kalamazoo) + geom_bar( aes(x = community, fill = as.factor(status)), position="fill") + scale_fill_discrete(name="Extinction\nStatus", labels=c("Extinct","Alive")) + scale_y_continuous(labels=scales::percent) + ylab("Percentage") + theme(axis.text.x= element_text(angle=90))

#Create a ggplot for the Growth Form species characteristic
pGrowthForm <- ggplot(Kalamazoo) + geom_bar( aes(x = growthform, fill = as.factor(status)), position="fill") + scale_fill_discrete(name="Extinction\nStatus", labels=c("Extinct","Alive"))+ scale_y_continuous(labels=scales::percent) + ylab("Percentage") + theme(axis.text.x= element_text(angle=90))

#Create a ggplot for the Life History species characteristic
pLifeHistory <- ggplot(Kalamazoo) + geom_bar( aes(x = lifehistory, fill = as.factor(status) ), position="fill") + scale_fill_discrete(name="Extinction\nStatus", labels=c("Extinct","Alive"))+ scale_y_continuous(labels=scales::percent) + ylab("Percentage") + theme(axis.text.x= element_text(angle=90))

#Create a ggplot for the Native Status species characteristic
pNative <- ggplot(Kalamazoo) + geom_bar( aes(x = native, fill = as.factor(status) ), position="fill") + scale_fill_discrete(name="Extinction\nStatus", labels=c("Extinct","Alive"))+ scale_y_continuous(labels=scales::percent) + ylab("Percentage") + theme(axis.text.x= element_text(angle=90))

#Create a ggplot for the Rarity species characteristic
pRarity <- ggplot(Kalamazoo) + geom_bar(aes( x = raritycategory, fill=as.factor(status)), position="fill") + scale_fill_discrete(name="Extinction\nStatus", labels=c("Extinct","Alive"))+ scale_y_continuous(labels=scales::percent) + ylab("Percentage") + theme(axis.text.x= element_text(angle=90))

#Utilizing the cowplots package and the function plot_grid, create a plot grid that combines all ggplot bar graphs into one single graphic
plot_grid(pCommunity,pRarity, pGrowthForm, pLifeHistory, pNative)




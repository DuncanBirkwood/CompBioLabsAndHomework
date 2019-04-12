#Lab 12 New Problems - Duncan Birkwood

#Create the example plot from Cusack et. al. data

#Import the data

Cusack <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv")

#Bring in the package
library("ggplot2")

#Problem 1 and Problem 2
#Plot the data and orient the species names to 90 degrees
ggplot(data = Cusack, aes(x=Species)) + geom_bar() + theme(axis.text.x= element_text(angle=90)) + theme(axis.text.y = element_text(angle=90))

#Problem 3
#Replot the graph with flipped axis, and orient the data in a way from low-to-high counts

#Create a data frame with the counts for each species in order to plot the data
CusackCounts <- Cusack$Species

dfCusack <- as.data.frame(table(CusackCounts))

#Plot the data with the conditions needed for problem 3
ggplot(data = dfCusack, aes(x= reorder(CusackCounts, -Freq), y=Freq)) + geom_bar(stat="identity") + coord_flip() + ylab("Count") + xlab("Species") + ggtitle("Species Frequency")





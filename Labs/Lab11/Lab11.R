#Duncan Birkwood, Lab 11

#Import the data into R studio

DensityData <- read.csv("GlobalWoodDensityDatabase.csv", stringsAsFactors = F)

#Find the data with a missing input and remove it

NADensity <- which(is.na(DensityData$Wood.density..g.cm.3...oven.dry.mass.fresh.volume))

#Which provides the row 12150 in which there was a false input

#Remove the NA from the whole DensityData

DensityData <- DensityData[-NADensity,]

#Create a wood density vector
WoodDensityData <- DensityData$Wood.density..g.cm.3...oven.dry.mass.fresh.volume

library("dplyr")
Newdf <- summarise(group_by(DensityData, Family, Binomial), Density = mean(WoodDensityData))

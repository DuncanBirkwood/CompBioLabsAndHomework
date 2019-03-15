#Duncan Birkwood - Lab09

#Import the camera trap data file

camData <- read.csv("Cusack_et_al_random_versus_trail_camera_trap_data_Ruaha_2013_14.csv", stringsAsFactors = F)

?strptime

#Create a small trial vector

smallVec <- camData$DateTime[1:5]

#Try converting this test vector to data that we can use

strptime(smallVec, format = "%d/%m/%Y %H:%M") 

#SmallVec needs to recieve the above action

smallVec <- strptime(smallVec, format = "%d/%m/%Y %H:%M") 

#This coverts the date and times into data objects

#We can test this on a much larger vector

largeVec <- camData$DateTime

#largevec needs to receive the result of previous actions

largeVec <- strptime(largeVec, format = "%d/%m/%Y %H:%M") 


#Problem 2 - Attemp it in a for loop - Probably not the best idea - Apprently there is no real best idea

for (i in 1:length(largeVec)){
 if (largeVec[i] == 0013)
  { largeVec[i] <- (largeVec[i] + 2000)
 }
}

#I do not believe this worked

largeVec


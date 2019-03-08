#Duncan Birkwood - Lab08

#Part 3 A - Create a new script that contains the Lab04 code, problem 7 for logistic growth (this is incorporated into the function)

#Part B - Create a function from the growth model with the appropriate variables
LogGrowthModel <- function(r, k, g, p) {
  abundance <- rep(0,g)
  for (i in 2:length(abundance)){
    abundance[1] <- p
    newpopabundance <- (abundance[i-1] + (r * abundance[i-1] * ((k - abundance[i-1])/k)))
    abundance[i] <- newpopabundance  
  }
  generations <- seq(1,length(abundance))
  #Part C - Add code to the function that produces a plot of the data it generates
  plot(generations,abundance)
  myMatrix <- cbind(generations,abundance)
  return(myMatrix)
}

#Part D - Write lines of code that call the function with a set of parameter values that I choose
(LogGrowthModel(1.57,1000,25,3))

LogData <- (LogGrowthModel(1.57,1000,25,3))

#Part E - Write a line of code that writes the data into a file
write.csv(x = LogData, file = "LogGrowth.csv", row.names=FALSE)


#Duncan Birkwood, Lab05

#Step 1, create a variable named x

x <- 7

#Write an if-else statement that tests if the value is larger than 5
 
if( x > 5 ) {
  print( "X is larger than 5" )
} else {
  
  print( "X is smaller than 5")
}

#Step 2
#Import the file Vector1

read.csv("Vector1.csv", header = TRUE) -> Vector1


#Turn the data frame into a vector
Vector1 <- Vector1$x

#Step 2a, using a for() loop change every negative value in the imported data to NA
for(i in 1:length(Vector1)) {
  if (Vector1[i]< 0 ) {
    Vector1[i] <- NA
  }
}
  
#Step 2b, Use vectorized code and logical indexing to change every Na to NaN

is.na(Vector1)

Vector1[is.na(Vector1)] <- NaN

#Step 2c, Use a which statement and integer indexing to change all of the NaN values to zero

Vector1[which(is.nan(Vector1))] <- 0

#Step d, Use code to determine how many values in the data fall between 50 and 100

which(Vector1 >= 50 & Vector1 <= 100 )

#There are 498 values that fall between 50 and 100

#Step e, Create a vector of data that fall in the range between 50 and 100

FiftyToOneHundred <- which(Vector1 >= 50 & Vector1 <= 100 )

#Step f, Use the write.csv() command to save your file into the working directory

write.csv(x = FiftyToOneHundred, file = "FiftyToOneHundred")

#Step 3, Import CO2 emmissions data

read.csv("CO2_data_cut_paste.csv") -> CO2

#Utilize code to answer what was the first year gas emissions were not zero
Vector2 <- CO2$Gas

NonZeroGasVector <- which(Vector2 != 0)

#This prints the fist year in which data on gas emissions was not zero
print(CO2$Year[NonZeroGasVector[1]])

#Utilize code to answer which yeare the "Total emissions were between 200 and 300 million
#Step 3b

TotalVector <- CO2$Total
print(TotalVector)

V1 <- which(TotalVector > 200)
V2 <- which(TotalVector < 300 )

print(CO2$Year[V1[1]])
print(CO2$Year[V2[tail(V2, n=1)]])

#Between the years 1879 and 1887

#Part II. Loops + conditionals + biology

#Step 1, set up parameter values
totalGenerations <- 1000
initPrey <- 100 	# initial prey abundance at time t = 1
initPred <- 10		# initial predator abundance at time t = 1
a <- 0.01 		# attack rate
r <- 0.2 		# growth rate of prey
m <- 0.05 		# mortality rate of predators
k <- 0.1 		# conversion constant of prey into predators

#Step 2, create a time vector as well as two additional vectors to store results
timeVec <- rep(0,1000)

timeVec <- seq(1,1000)

nVals <- rep(0,1000)

pVals <- rep(0,1000)

pVals[1] <-10

nVals[1] <- 100

#Steps 3 and 4, Step 3 write a loop that implements the calculations.
#Step 4, following this add some if statements to check for negatives and replace these negative values with 0

for (i in 1:999) {
  nVals[i+1] <- nVals[i] + (r * nVals[i]) - (a * nVals[i] * pVals[i])
  pVals[i+1] <- pVals[i] + (k * a * nVals[i] * pVals[i]) - (m * pVals[i])
  if (pVals[i+1] < 0 ) {
      pVals[i+1] <- 0
  }
  if (nVals[i+1] < 0) {
    nVals[i+1] <- 0
  }
 }
print(nVals)

print(pVals)

#Step 5, make a plot of the abundances of prey and predators over time

plot(timeVec, nVals, xlab="Generation", ylab="Abundance", col="red")


points(timeVec, pVals, xlab="Generation", ylab="Abundance", col="blue")

#Step 6, Create and label a matrix of time, prey abundance, and predator abundance

legend(600, 800, legend=c("Prey Abundance", "Predator Abundance"), col=c("red","blue"), lty=1:1, cex=0.8)

cbind(timeVec, nVals, pVals) -> myResults

colnames(myResults) <- c("TimeStep","PreyAbundance", "PredatorAbundance")


#Write this matrix to a csv in your Lab05 working direcotry  
write.csv(x = myResults, file = "PredPreyResults.csv")

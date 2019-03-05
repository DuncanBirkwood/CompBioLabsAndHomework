#Duncan Birkwood, Lab07

#Problem #1, write a function that returns the area of a triangle when given base and height
# a is the base value and b is the height

triangleFunction <- function(a, b) {
  triangleSum <- 0.5 * a * b
  return(triangleSum)
}

#Demonstrate the function works by inputting the values 10 for base and 9 for height
triangleFunction(10,9)

#Step #2
#Define the variables that we are working with
x <- 5
y <- -2.3
z <- c(1.1,2,0,-4.3,9,-12)

#Create a funciton that returns the absolute value of a variable inputted
myAbs <- function(x){
if (x < 0) {
  x <- x * -1
}
return(x)
}

#Input the value 5 into the function - returns a value of 5
myAbs(x)

#Input the value -2.3 into the function - returns a value of 2.3

myAbs(y)

#Create a new function that outputs the absolute values of numbers in a vector

myAbs1 <- function(z){
for (i in 1:length(z))
  if (z[i] < 0 ){
    z[i] <- (z[i] * -1)
  }
return(z)
}

#Check the absolute values in the vector
myAbs1(z)

#Problem #3

#Write a function that outputs the Fibonacci sequence to the q value.

#Create the for for loop and new Fibonacci vector within it
for (i in 1:length(fibVector)) {
  fibVector[i+2] <- fibVector[i] + fibVector[i+1]
}

q <- 10
fibFunction <- function(q){
  fibVector <- rep(0,q)
  fibVector[2] <- 1
  for (i in 1:(q-2)) {
    fibVector[i+2] <- fibVector[i] + fibVector[i+1]
  }
return(fibVector)
}

#Test outputting the Fibonacci sequence to the 10th output

fibFunction(10)
  
#Step #4

#Step 4a - Write a funcntion that takes two numbers and returns a square of the difference

squareFunction <- function(x,y){
  squareSum <- (x-y)^2
  return(squareSum)
}

#Demonstrate the function works with the numbers 3 and 5

squareFunction(3,5)

#Utilize the function with a vector as first input and integer as the second number

firstArg <- c(2,4,6)

squareFunction(firstArg, 4)

#Step 4b - Create a function in R that can calculate the average of sums

sumFunction <- function(A){
  sums <- (sum(A)/length(A))
  return(sums)
}

#Create new vector to demonstrate the function works
testVector <- c(5,15,10)

sumFunction(testVector)

#Part 4c

SumOfSquares <- function(E){
  sums1 <- sum((E - sumFunction(E))^2)
  return(sums1)
}

#Import the data from GitHub
Data <- read.csv("DataForLab07.csv")

#Turn the imported data into a vector in R
DataVec <- Data$x

#Calculate the sum of squares for the imported data
SumOfSquares(DataVec)

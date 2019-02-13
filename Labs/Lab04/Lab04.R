#Duncan Birkwood Lab04

#Step 1 - Practice For Loop - This For loop prints Hi ten times

for ( i in seq(1,10)) {
  print("Hi")
}

#step 2
#Create variables for the for loop

cash <- 10

gum <- 1.34

allowance <- 5

#Create a for loop that prints the total amount of money each week for eight weeks

for (i in  1:8) {
  newcash <- ((cash + allowance) - (2*gum))
  cash <- newcash
  print(cash)
}

#Step 3 - Create a for loop that calculates population size for the next seven yearss

#Create variables
popsize <- 2000

poprate <- 0.95

#Create a running for loop

for (i in 1:7){
  popsize*poprate -> newpop
  popsize <- newpop
  print(popsize)
}

#Step 4
#Create variables for logistic growth equation

popabundance <- 2500
r <- 0.8
k <- 10000

#Still step 4 and part of step #7
abundance <- rep(0,12)

#Step 4 continued - create a for loop that prints the abundance of the population at each time step

for (i in 1:12){
  newpopabundance <- (popabundance + (r * popabundance * ((k - popabundance)/k)))
  abundance[i] <- popabundance
  print(popabundance)
  popabundance <- newpopabundance  
  
}

#The abundance of the population for n[12] 9999.985


print(abundance)

#Step 5a - Use the rep command to make a vector of 18 zeros

vector <- rep(0,18)
print(vector)

#step 5b - Create a for loop that creats 3X the "i"th value of the iterator variabe (i)

for (i in seq(1,18)){
  variable <- 3*i
  print(variable)
}

#Step 5c - Create the same vector of zeros but give the first value a valu of 1
newvector <- rep(0,18)

newvector[1] <- 1
print(newvector)

#Step 5d

for (i in 2:18){
  newvector[i] <- (newvector[i-1]) * 2 + 1
  print(newvector) #Print function is not necesary here, just helps me visualize
}

print(newvector)

#Step 6 - Write a code that makes a vector of the first 20 values of the Fibonacci sequence, utilizing the for loop.

#Creates a vector of 20 values
verynewvector <- rep(0,20)
  
verynewvector[2] <- 1
print(verynewvector)

#Create a for loop 
for (i in 1:18) {
  verynewvector[i+2] <- verynewvector[i] + verynewvector[i+1]
}

print(verynewvector)

#Step 7 - Plot time and abundance from the data found in step #4

time <- seq(1,12)

plot(time, abundance)


#Graph rises rapidly then levels off at the carrying capacity of 10,000

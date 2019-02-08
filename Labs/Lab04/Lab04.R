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

for (i in  1:8) {
  newcash <- ((cash + allowance) - (2*gum))
  cash <- newcash
  print(cash)
}

#Step 3
#Create variables
popsize <- 2000

poprate <- 0.95

#Create a running for loop

for (i in 1:7){
  popsize*poprate -> newpop
  popsize <- newpop
  print(popsize)
}

#Create variables for logistic growth equation

popabundance <- 2500
r <- 0.8
k <- 10000

#Step 4

#Part of step #7
abundance <- rep(0,12)

#popabundance <- rep(0,12)

#popabundance[1] <- 2500

#Step 4 continued

for (i in 1:12){
  newpopabundance <- (popabundance + (r * popabundance * ((k - popabundance)/k)))
  popabundance <- newpopabundance  
  abundance[i] <- newpopabundance
  print(newpopabundance)
}

#The abundance of the population for n[12] 9999.985
print(newpopabundance)


print(abundance)


#The value of n[12] is 9999.997

#Step 5a

vector <- rep(0,18)
print(vector)

#step 5b

for (i in seq(1,18)){
  variable <- 3*i
  print(variable)
}

#Step 5c
newvector <- rep(0,18)

newvector[1] <- 1
print(newvector)

#Step 5d

for (i in 2:18){
  newvector[i] <- (newvector[i-1]) * 2 + 1
  print(newvector) #Print function is not necesary here, just helps me visualize
}

print(newvector)

#Step 6

verynewvector <- rep(0,20)
  

verynewvector[2] <- 1
print(verynewvector)

for (i in 1:18) {
  verynewvector[i+2] <- verynewvector[i] + verynewvector[i+1]
}

print(verynewvector)

#Step 7

time <- seq(1,12)

plot(time, abundance)

#Graph rises rapidly then levels off at the carrying capacity of 10,000

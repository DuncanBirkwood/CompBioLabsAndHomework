#Duncan Birkwood, Lab Number 3

#Lab step 3
#the "chips" variable represents the number of bags of chips at the Star Wars viewing party
# The "guests" variable represents the number of guests at this party
chips <- 5

guests <- 8

#Lab step 5.  The "guestseat" variable represents the average number of bags eaten by each guest
guestseat <- 0.4

#Lab step 7, Calculating the amount of leftover chips

Leftovers <- chips - guests*guestseat

#Lab step 8
#Self ranking for Star Wars Episodes I-VII

Self <- c(7,6,5,1,2,3,4)

#Penny ranking for Star Wars Episodes I-VII

Penny <- c(5,7,6,3,1,2,4)

#Jenny ranking for Star Wars Episodes I-VII

Jenny <- c(4,3,2,7,6,5,1)

#Lenny ranking for Star Wars Episodes I-VII

Lenny <- c(1,7,3,4,6,5,2)

#Stewie ranking for Star Wars Episodes I-VII

Stewie <- c(6,7,5,4,3,1,2)

#Lab step 9
PennyIV <- Penny[6] #Access 6th element of Penny

LennyIV <- Lenny[6] #Access to 6th element of Lenny

#Lab step 10
Grid <- cbind(Self, Penny, Jenny, Lenny, Stewie) #Creates a a single data objct wiith 5 columns and 7 rows.

#Lab step 11
str(PennyIV) #Results in the number 2 ( Penny's ranking of Episode IV)

str(Penny) #Results in all 7 numerical rankings of each Star Wars episode

str(Grid) #States structure of Grid with 7 rows and 5 columns

#Lab step 12
dataframe <- data.frame(Grid) #Outputs the names of each individual with their 7 rankings of each movie in a matrix

as.data.frame(Grid) #Outputs the visually the same data as the data.frame() function

#Lab step 13
dim(dataframe) #Outputs the number of rows and then columns (7,5)

dim(Grid) #Outputs exactly the same as the line above

str(dataframe) #Outputs "7 obs. of  5 variables" and lists all of the ranks present for each individual

str(Grid) #Outputs first 10 numbers of rankings then ... Also lists all names of those who ranked the movies,  dataframe is more useful in this instance

dataframe == Grid  #This output confirmed both matrices contain the exact same data in the same location indicated by the word "TRUE"

typeof(dataframe) #States dataframe is a list

typeof(Grid) #States that Grid is a "double"

#Lab step 14
episodenames <- c("I","II","III","IV","V","VI","VII")  #This created a vector with the number names of each Star Wars movie

#Lab step 15
row.names(dataframe) <- episodenames #Adds row names to dataframe

row.names(Grid) <- episodenames #this function names the row of Grid
 
#Lab step 16
Grid[3,] #Accesses the third row of Grid

#Lab step 17
dataframe[,4] #Accesses the fourth column of dataframe

#Lab step 18
dataframe[5,1] #The specific Self ranking for episode V

#Lab step 19
dataframe[2,2] #Accesses Penny's ranking for Episode II.

#Lab step 20
dataframe[4:6,] #Accesses Everyone's ranking for episodes IV-VI

#Lab step 21
access <- c(2,5,7)
dataframe[access,]# This accesses everyone's rankings for episodes II,V, VII

#Lab step 22
namesaccess <- c("Penny", "Jenny", "Stewie")

episodesIVVI <- c(4,6)
 
dataframe[episodesIVVI, namesaccess] #Accesses rankings for just those specific names

#Lab step 23
lennyrankingII <- dataframe[2,"Lenny"]

temp <- dataframe[5,"Lenny"]
 
lennyrankingII -> dataframe[5,"Lenny"]

dataframe[2,"Lenny"]  <- temp

#This code above swapped Lenny's rankings for Episode II and Episode V

#Lab step 23

Grid["III","Penny"] #This displays Jenny's ranking for episode III in Grid

dataframe["III","Penny"]  #This displays Jenny's ranking for episode III in dataframe

#Lab step 24
LennyV <- dataframe["V","Lenny"]

dataframe["V","Lenny"] <- dataframe["II","Lenny"]

dataframe["II","Lenny"] <- LennyV
#These operations switch back the variables for Episodes II and V for Lenny

#Lab step 25
dataframe$Lenny[2] #This finds Lenny's ranking for Episode II in the colummn "Lenny"

#Lab step 26
dataframe$Lenny[2] -> Lenny2

dataframe$Lenny[2] <- dataframe$Lenny[5]

dataframe$Lenny[5] <- Lenny2

#These operations switched the Episodes II and V rankings for Lenny back around

#Lab step 27 - save script and push to git

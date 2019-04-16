


### Species Characteristics Affect Local Extinctions

#### Introduction

Due to human activity, many species are under threat of extinction.  Currently, it is very difficult to predict the risk of extinction for many threatened species.  Species characteristics are useful in predicting the response to human-driven change and may also help predict the likelihood of extinction.  Historical data on species losses can help to identify specific traits that influence threatened species to local extinction.  My specific driving question for this project is what are the common factors among plant species that result in local extinctions?

### Summary of Data to be Analyzed
##### Goal of the Study and Methods
The goal of this study was to look at how specific species characteristics affect the local extinction risk for many plant species.  To do this the study looked at a variety of factors including the plant’s community, life history, growth form, rarity, etc.  To study such data the researchers used historical botanical data from Kalamazoo County Michigan to look at if species characteristics (community association, native status, growth form, life history, range edge, habitat specialization, N-fixation, photosynthetic pathway, and rarity) or their phylogenetic relatedness can help to explain local species loss at the county level.
##### Format of Data
The data is formatted in an excel document with column titles at the top and the corresponding data spanning down each column.  There are 1137 rows and 15 columns of data.  The size of the data file is 122.7 Kb.  
##### Inconsistencies in the Data File
The biggest problem I see with the data set is that two of the columns named “dataphylo” and“dataphylo1” do not have values or names for nearly half of the entries.
##### What Does the Data Represent about Biology?
The data represents a variety of characteristics (community association, native status, growth form, life history, range edge, habitat specialization, N-fixation, photosynthetic pathway, and rarity) and how those characteristics may be able to predict the extinction status of corresponding plant species at the county level.
### Analysis to be Done
I intend to separate the data into two groupings of data within R.  The first group being the data from species that are locally still existing and the second data group being from species that are locally extinct.  From these two groups I want to create a bar chart in ggplot2 that is able to create two sets of data for each characteristic (visually each characteristic will have a bar of two different colors corresponding to the extinction status of the species).  There will be a legend and corresponding color for each of the distinct groups.  There will be a number of bars (2-4) for each corresponding species characteristic category, each bar will represent the variety of different results possible for that species characteristics.  In addition to this, like stated above each bar will show a visual ratio of how many of the species with that characteristic are locally extinct or still locally existent.  The y-values will be the number of times each response appears on the bar plot, but the most significant portion will be the ratio of the two groups for each bar.   
The challenges that I expect as a result of this data set will be working with a newly learned package (ggplot2) and figuring out how to make it perform new tasks like graphing two different groups on the same bar and making multiple bars for each category on the x-axis.  In addition to this, I may run into issues with the "namephylo" and "namephylo1" categories because there only exists data in these columns for about half of the species listed.  

### References 
Zettlemoyer MA, McKenna DD, Lau JA (2019) Species characteristics affect local extinctions. American Journal of Botany. [https://doi.org/10.1002/ajb2.1266](https://doi.org/10.1002/ajb2.1266)

Zettlemoyer MA, McKenna DD, Lau JA (2019) Data from: Species characteristics affect local extinctions. Dryad Digital Repository. [https://doi.org/10.5061/dryad.231m570](https://doi.org/10.5061/dryad.231m570)

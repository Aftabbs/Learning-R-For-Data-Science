### Day 20
# DataFrames in R
## A Data Frame is an array like structure unlike an array the data we store in columns of
#Datarame can be of Various Types
# A Dataframe is a 2-D Array Like Struture or a table in which a column contain values of one variable
# and each column a Dataframe  is  a special case of the list in which each component has equal length
# Example 1
rating <- 1:4
animal <- c('koala', 'hedgehog', 'sloth', 'panda')
country <- c('Australia', 'Italy', 'Peru', 'China')
avg_sleep_hours <- c(21, 18, 17, 10)
super_sleepers <- data.frame(rating, animal, country, avg_sleep_hours)
print(super_sleepers)

# Alternate example
super_sleepers <- data.frame(rating=1:4,
                             animal=c('koala', 'hedgehog', 'sloth', 'panda'),
                             country=c('Australia', 'Italy', 'Peru', 'China'),
                             avg_sleep_hours=c(21, 18, 17, 10))
print(super_sleepers)
print(class(super_sleepers)) #  "data.frame

#to know DataFrame Structure and info similar to Pandas info() use below function
str(super_sleepers)
#'data.frame':	4 obs. of  4 variables: Column name and its Dtypoes
 # $ rating         : int  1 2 3 4
#$ animal         : chr  "koala" "hedgehog" "sloth" "panda"
#$ country        : chr  "Australia" "Italy" "Peru" "China"
#$ avg_sleep_hours: num  21 18 17 10


## To Extract Column and row info from DF
# Extract Only Select Column info usin $
f1<-data.frame(super_sleepers$rating,super_sleepers$country)
f1

# Extract Usin index
super_sleepers[2,] # Entire Second row wit all columns
super_sleepers[2:3,] # 2nd and 3rd Row wit all columns
super_sleepers[,2] # 2nd Columns only values will be printed
super_sleepers[c(1,2),c(3,4)] # 1,2 nd row of 3,4t column values
super_sleepers[2,3] # 2nd row 3rd column only value will be printed no column name will  be provided

## DataFrame Modification
## To add Column to we use cbind() and for row we use rbind()
# Add row 
l1<-list(5,'tiger','india',10)
rbind(super_sleepers,l1)
# 5th row has been added

# add column
#c<-c('life expectency')
cbind(super_sleepers,life_expectency=c(11,12,18,19))

## Delete Rows and Columns
# For Row Deletion # 2nd row delete
super_sleepers<-super_sleepers[-2,]
super_sleepers # 2nd row is deleted and Index count is not changed


# Column Delete (avg_sleep_hours Column)
super_sleepers$avg_sleep_hours<-NULL # Just assign NULL
super_sleepers



## to find Statiscal summary and Nature of Dataframe
print(summary(super_sleepers))

#rating         animal            country         
#Min.   :1.000   Length:3           Length:3          
#1st Qu.:2.000   Class :character   Class :character  
#Median :3.000   Mode  :character   Mode  :character  
#Mean   :2.667                                        
#3rd Qu.:3.500                                        
#Max.   :4.000     


# Similar to Describe() in Pandas
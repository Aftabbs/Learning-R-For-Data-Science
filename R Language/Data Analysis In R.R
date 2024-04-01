## Day 22 
# Import/Load DataSet and Analyse Data
 getwd( ) # to know current working directory  "C:/Users/Admin/Documents"
 # to change the workin Directory
 # additional Link to Learn - https://www.geeksforgeeks.org/data-analysis-using-r/
 
 setwd('C:\\Users\\Admin\\R Language')
 
 
 # Important Function for Vectors
 # sort
 v<-c(22,33,441,12,45,66)
 sort(v) # default it is Ascendin
 sort(v,decreasing = T) # for Descendin
 
 #order
 order(v) # it tells the default index values of elemnets present in vector before sorting
 v[order(v)] # Sorts Ascendin

 
 # rank
 
 rank(v) # Ranks the vectors element  based on Ascendin-2 3 6 1 4 5
# (22,33,441,12,45,66)
#  2 ,3 ,6 ,1 ,4 ,5
 v[rank(v)]
 

# Read_csv And Analyse CSV
 
 
 df=read.csv('train.csv')
## Important Note the dataset should also be in Current Workin Directory
 #  Else if its not in Current workin Direc add the Entire Path //
head(df) # Top 6 Rows 
#To understand the class(data type) of each column sapply() method can be used.
print(nrow(df)) # prints No Of Rows
print(ncol(df)) # No Of Columns
view(df)

sapply(df,class) # Column and Dtypes
 
is.data.frame(df) # TRUE
 
summary(df) # Statistical Summary Of Dataset


 

# Drop Null
dropnull_df=df[rowSums(is.na(train))<=0,]

# 3rd way to read_csv
df1<-read.table('train.csv',header = T,sep=',')
df1

# fix
fix(df)# a new separte virtual interface of Dataset csv opens where we can manually edit,add,remove,rename rows and columns

#str-Structure of Dataset
str(df)

# dim() Dimension of Df ie(row and column count)
dim(df)

#length() # count of Columns
length(df)

#names() # all variables name/Column names
names(df)

#colname() # column names
colnames(df)



# To Replace the Column place based on our choice
#like for example take last column and add it 6th place Purchase
#should replace City_category

df<-df[c(1:5,12,6:11)]
names(df)
# re-placed sucessfully

df[1:10,] # first 10 rows
df[1:10,3] # first 10 rows of only 3rd column

df[c(1:6),c(1:4)] # first 6 rows of only first 4 columns




# Visualise cat-columns barplot()
barplot(table(df$Gender), 
        xlab="gender", 
        ylab="Count")

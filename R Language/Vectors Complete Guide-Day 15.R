## Day 15 Vectors in R
A data structure is a specialized format for organizing, processing, 
retrieving and storing data. There are several basic and advanced types of 
data structures, all designed to arrange data to suit a specific purpose.
Data structures make it easy for users to access and work with the data 
they need in appropriate ways.
The basic data structures used in R include vectors, lists, matrices, 
data frames, and factors. Data structures are used to handle multiple values, 
which means that only rarely do we work with data using single values, such as a
single number, like 23, or a
single word or phrase, like ''twenty-three''.


# in R these are Basic Data Structures Present
# Vectors 
# matrix
#array 
#list
#data frames




# Vectors: It is a Basic Data Structure in R implemented in two ways 
#*Atomic Vector- consider same dtype values
#*Lists- consider diiferent dtypes values
#*Featurs of Vector
# Vectors is Sequence of Elements
# Shares Same Data type
# Supports all Datatypes
# The Elements Of Vectors are called Components
# length() is used to find no of elements in Vectors



# Create a Vector(multiple ways)
 ist type - vec1<-c(23,23.4,34,21) # 1D Array
 2nd type (use :)- vec1<- -3:6 
 or alternate way for 2nd type
 seq(1,10)
 seq(1,10,by=2) # by  is Step size
 seq(1,4,length.out=2) # length.out is also step size
 
 
# Types of Vector
* Atomic Vector: concistes 4 types
 * Numeric Vector-Contains only Numeric values
 num_vec<-c(23.3,22.2,28.9,27)
 class(num_vec) # op numeric
 
 * integer Vector: contains only Int type values
 int_vec<-c(23,22,28,27)
 class(int_vec) # by default op is numeric so we type cast it
 
 int_vec<-as.integer(int_vec)
 class(int_vec) # Op int
 
 # another alternate way
 int_vec<-c(4L,8L,2L,234L)
 class(int_vec) # Op int
 
 
 * Character vector: Contains Only str type elements
 char_vec<-c('yty','fyt','fyu')
 class(char_vec)
 # Type Cast to other types to character
 
 * Logical Vector: Contains Only Logical type elements(True False)
 
 
 ### To Acces Vectors Elements
 
* By Indexing:[] (Starts From 1, both start point and endpoint is Included)
 # ex1
 vec1<-1:10
 vec1[2] # 2
 
 * The Other way similar to indexing is using Str type
 char_vec<-c('aftab'=12,'ftx'=13,'top'=14)
 char_vec
#op aftab   ftx   top 
#     12    13    14 
 
# to access
 char_vec['aftab'] #op 12
 char_vec[12] #Op NA
 
 
 
 # Logical vextors index is different
lvec<-c(1,2,3,4,0)
lvec[c(TRUE,FALSE,TRUE,FALSE,TRUE)]
lvec # Returns only values with TrUE 


### Operation in Vectors
## To Combine Vectors
vec1<-c(1,2,3)
vec2<-c('a','b','c')
vec3<-c(vec1,vec2)
vec3 #op "1" "2" "3" "a" "b" "c" combines all and converts dtype

## Arithmetic Operations
vec1<-c(1,2,3)
vec2<-c(1,2,3)
vec3<-vec1+vec2
vec3 #  2 4 6 element wise operation

# same will be carried for -,*,/...

## Negative indexing
vec1[1] # op 1
vec1[9] #op  NA as it exceeds

vec1[-1] # 2 3 excludes 1st index value and considers remainig value
vec1[-2] # 1 3
vec1[1:3] #1 2 3

vec1[c(1,2)]# 1 2

vec1[c(1,2,1)]# 1 2 1 duplicated indexed element will also be allowed

## Naming Of vectors( providing some alias for the elements present in vectors using names())
vec<-c('aftab','md','aft')
names(vec)<-c('y1','y2','y3')
vec

# Op      y1      y2      y3 
#-->    "aftab"    "md"   "aft" 

# to acces using alias
vec['y1'] # Op "aftab" 

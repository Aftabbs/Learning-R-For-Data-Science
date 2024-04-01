# Day 19 - Matrix in R
#Matrix is also a tyoe of Data Structure but it only contains 2-D Data ie Rows and Columns

#vector: 1 D data
#array: more than 2 D data
#Matrix: Exactly 2 D Data

# Syntax and parameters to create a Matrix
#mat1<-matrix(data,nrow=,ncol=,byrow=,dimnames)
#data: input data can be vector,list,array
#nrow: no of rows we need
#ncol: no of Cols we need
#byrow: it is Bool by default it is FALSE ie is the arrangement of elements will be
#in Column Wise if TRUE Then Row wise
#dimnames: To name Rows,Columns
# nrow and ncol count should always be aligned (ie if data length is 16 the col and row count can be 4X4,2X8..)

mat1<-matrix(c(1:16),nrow=4,ncol = 4,byrow=TRUE)
mat1
#if TRUE look at Row values
#[,1] [,2] [,3] [,4]
#[1,]    1    2    3    4
#[2,]    5    6    7    8
#[3,]    9   10   11   12
#[4,]   13   14   15   16
mat1<-matrix(c(1:16),nrow=4,ncol = 4) # Default Byrow is FALSE
mat1
# If byrow=FALSE Look at column values
#[,1] [,2] [,3] [,4]
#[1,]    1    5    9   13
#[2,]    2    6   10   14
#[3,]    3    7   11   15
#[4,]    4    8   12   16
# Naming For Matrix


x<-matrix(c(5:16),nrow=4,byrow=TRUE)
y<-matrix(c(7:18),nrow=4,byrow=FALSE)
row_name<-c('R1','R2','R3','R4')
col_name<-c('C1','C2','C3')
final_mat<-matrix(c(7:18),nrow=4,byrow=TRUE,dimnames=list(row_name,col_name))
final_mat
#op
#   C1 C2 C3
#R1  7  8  9
#R2 10 11 12
#R3 13 14 15
#R4 16 17 18


# Accesing Elements from Matrix by indexin
# syntax final_mat[row,col]

final_mat[3,1] # print 3rd row 1st element op=13
final_mat[2,3] # 2nd row 3rd element op=12
final_mat[2,]# prints only entire 2nd row
final_mat[,3] # prints only entire 3rd Column
## to modify the elements in matrix 
#ex1 replace the final_mat[4,3] element value ie convert 18 to 1
final_mat[4,3]<-1
final_mat[4,3] #op 1

# Using Operators in Matrix 
final_mat[final_mat==16]<--1 # it simply means that wherever exact 16 is found in mat replace it with -1
final_mat

final_mat[final_mat<=4]<--4 # replace values with -4 where elements is <=4
final_mat


## Adding Rows and columns to matrix
#we use rbind() to add row and cbind() to add column
final_mat # original matrix
#C1 C2 C3
#R1  7  8  9
#R2 10 11 12
#R3 13 14 15
#R4 -4 17 -4

# lets add a row for this matrix
rbind(final_mat,c(9,9,9))
#   C1 C2 C3
#R1  7  8  9
#R2 10 11 12
#R3 13 14 15
#R4 -4 17 -4
#    9  9  9

# lets add a Column 
cbind(final_mat,c(1,1,1,1))
#   C1 C2 C3  
#R1  7  8  9 1
#R2 10 11 12 1
#R3 13 14 15 1
#R4 -4 17 -4 1

# To get transpose of a Matrix(convert rows to column and columns to rows) use t()
t(final_mat)
#   R1 R2 R3 R4
#C1  7 10 13 -4
#C2  8 11 14 17
#C3  9 12 15 -4

###Arithmetic Operation for Matrix
mat1<-matrix(c(1:4),nrow = 2,ncol = 2)
mat2<-matrix(c(5:6),nrow = 2,ncol = 2)
add<-mat1+mat2
add
#6    8  Element wise add
#8   10

mul<-mat1*mat2
mul
#5   15
#12   24


# Similarly all types of Arithmetic operations element wise can be done
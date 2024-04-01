## Day 18 Arrays in R
# arrays is used to store data in more than 2 dimensions
# syntax arr1<-array(data=c(vector),dim=c(row_size,col_size,occurence/times))

vec1<-c(1,2,3)
vec2<-c(10,20,30,40,50,60)

arr1<-array(c(vec1,vec2),dim = c(3,3,2))#(dim=c(3 times rows,3 times columns ,2 times repeat))
arr1

##      [,1] [,2] [,3] 1st time 
#[1,]    1   10   40
#[2,]    2   20   50
#[3,]    3   30   60
##      [,1] [,2] [,3] 2nd times repeated 
#[1,]    1   10   40
#[2,]    2   20   50
#[3,]    3   30   60

# naming For Rows ,Columns and Matrix

col_name<-c('C1','C2','C3')
row_name<-c('R1','R2','R3')
mat_name<-c('Mat1','Mat2')  # Times/Occurence Name


arr_updated<-array(c(vec1,vec2),dim = c(3,3,2),dimnames = list(row_name,col_name,mat_name))
arr_updated
# , , Mat1

#   C1 C2 C3
#R1  1 10 40
#R2  2 20 50
#R3  3 30 60

#, , Mat2

#   C1 C2 C3
#R1  1 10 40
#R2  2 20 50
#R3  3 30 60

# Follow this pattern only dimnames = list(row_name,col_name,mat_name)

## Acces the values of an array
#Syntax arr[row,col,matrix]

print(arr_updated[1,2,2]) # 1st row,2nd col,2nd matrix/occured matrix)
print(arr_updated[,,2]) # prints only 2nd matrix
print(arr_updated[1,,1]) #print 1st row only of 1st matrix

## To manipulate or to perform some functions wit arrays
v1<-c(1,2,3)
v2<-c(11,12,13,14,15,16)
arr2<-array(c(v1,v2),dim=c(3,3,2))
arr2


new_arr<-arr_updated+arr2
new_arr # in arrays element wise addition is done and values are updated

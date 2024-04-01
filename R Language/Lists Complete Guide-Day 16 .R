## Day 16 Lists in R
#We know that vectors in R has limitation ie is It is Homogenous it stores only same
#type of Data hence to solve this Lists comes into picture it stores multiple hetero genous 
#data elements/components
 # To Create List we use List()

list1<-list(TRUE,23,22.45,'strr')
class(list1)
# Loop used
for (i in list1){
  print(i)
}
# even vectors can be added inside List
list2<-list(TRUE,23,22.45,'strr',c(12,234,252))
list2

## Naming Of List Usin names() Ex Stud name and marks and course
list3<-list(c(12,234,252),c('A1','A2','A3'),c('MSC','DSE','MCA'))
list3
# Lets provide namin
names(list3)<-c('Marks','Student Name','Course_Name')
list3


# Lets call usin names
list3['Marks'] #12 234 252
list3['Student Name'] #"A1" "A2" "A3"
list3['Course_Name'] #"MSC" "DSE" "MCA"
## Access elements
list3[1] # "MSC" "DSE" "MCA" Usin Index
list3['Marks'] #12 234 252 usin names
list3$Course_Name # usin $ it automatically proivdes the names


### Convert List to Vectors
# we use unlist() func it converts list into vectors
# The reason to convert list to vectors is because we cannot 
#perform artihmetic operation on list hence it needs to be converted

l1<-list(1:3)
l2<-list(4:6)
conv_vec1<-unlist(l1)
conv_vec2<-unlist(l2)
print(cat(class(conv_vec1),class(conv_vec2))) #integer integer
conv_vec1*conv_vec2 #4 10 18

mer_vec<-c(conv_vec1,conv_vec2)
mer_vec



# Merge list

mer_l1<-list(list1,list2)
mer_l1
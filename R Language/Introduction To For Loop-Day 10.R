# Day 10 For -Loops
#Loop is mainly used to iterate on certain Iterables
# For Loops Requires Condition and n value(end point)
# Syntax of For Loop Without condition Simple Loop
for (variable in Vector/Iterable){
    print(variable)
} ## Basic Iteration Loop

## Syntax of forLoop with condition example
for (variable in Vector/Iterable){
  if variable==n (some Number){
    print(variable)
  }
  
# Ex 1 To Iterate through Range of numbers
  for (val in 1:10){
    print(val)
  }
  
## Paste Function is used for String Concatenation in Print or else where
  for (val in 1:10){
    print(paste('Number',val))
  }
  
# example with vector
vector1<-c('apple','banana','mango','apple','mango','tomato')
# identify Occurence of fruits Use loop and Conditions
a<-0
b<-0
m<-0
t<-0
for (i in vector1){
  if(i=='apple'){
    a=a+1
  }else if(i=='banana'){
    b=b+1
  }else if(i=='mango'){
    m=m+1
  }else if(i=='tomato'){
    t=t+1
  }
}
print(paste('Count of apple',a))
print(paste('Count of banana',b))
print(paste('Count of mango',m))
print(paste('Count of tomato',t))
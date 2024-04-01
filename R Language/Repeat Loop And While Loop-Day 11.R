# Day 11 Repeat Loop And While Loop
# Repeat Loop is a type of Loop where no condition is specified and to exit the loop 
# we use break -keyword
# Ex1: 
vec1<-c('hello','how','are','you')
x<-0
repeat{
  print(vec1)
  x<-x+1
  if (x>=5){
    break
  }
}

# The op will print till 5 times and breaks it



## While Loop
# Requires Condition and also main key diff is syntax is bit diff compared to for loop and 
#also initialization is done before while keyword
# syntax

while (<<Condtion>>) {
  print()
}


# Ex1-
vec1<-c('hello','how','are','you')
x<-0
while (x<=5){
  print(vec1)
  x<-x+1
  }


# Op prints 5 times vec1


# Day 7 If-Else Statements (it is used to provide a Condition)
 
## Basic if- only statement example (Syntax is Important)
x<-5
if (is.numeric(x))
{
  print('X is Numeric')
}


## Syntax of if-Else Statement
if  <'Condition'>
{
    'Print Statement'  
}else{
  'Print Statement'
}


## Basic Example of if-else statement
x<-67
if (is.integer(x))
{
  print('X is Integer')
}else{
  print('x is not Integer')
}



# Example 2 - work with Vectors (Check if 'key' is present in Vector Using Membership operator 'in')
vec1<-c('Hardwork','is','key','To','Success')
if ('key' %in% vec1)
{
  print('Key is found in our vector')
}else{
  print("Its is not Found")
}

## Nesting if-else (Provide multiple conditions using else if)
marks<-48
if (marks>=75)
{
  print('First Class')
}else if (marks>65){
  print('Second Class')
}else if (marks>45){
  print('Third Class')
}else{
  print('Fail')
}

# ExAMPLE 2 Work with vectors
marks<-c('Hardwork','is','key','To','Success')
if ('Hardwork' %in% marks)
{
  print('Hardwork is present')
}else if ('is' %in% marks){
  print('is IS Present')
}else if ('Success' %in% marks){
  print('Success is  Present')
}else{
  print('None)
}









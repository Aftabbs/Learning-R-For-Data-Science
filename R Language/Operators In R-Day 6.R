## Day 6-Operators in R
# 4 Types
# Arithmetic Operator :+,-,*,%% -Remainder,// -Floor,%/% -Quotient,^ -Power
a<-7.5
b<-2
print(a+b) # Add
print(a-b) # Sub
print(a*b) # Multiplication
print(a/b) # Division
print(a%%b) # Remainder
print(a%/%b) # Quotient
print(a^b)   # Power Of


#if we want to perform arithmetic operations on Vectors
# Vectors are collection of elements of same Datatype
c1<-c(1,2,3)
c2<-c(4,5,6)
print(c1+c2) # Add Op=5,7,9    Element Wise Operations are carried.
print(c1-c2) # Sub op=-3,-3,-3
print(c1*c2) # Multiplication
# ..... so on..

## Relational Operators : ==,<,>,<=,>=,!- Note: The O/p of Relational Operators will always be True/False
a<-8
b<-5
print(a>b) # Op True
print(a<b) # False
print(a==b) # False
print(a!=b) # True
print(a<=b) # False
print(a>=b) # True
# if we want to perform this operations on Vectors
c1<-c(1,2,3)
c2<-c(4,5,6)
print(c1==c2) # op=False,False,False  Element Wise Operations are carried.
print(c1!=c2) # op=True,True,True
print(c1<=c2) # op= True,True,True


## Logical Operators: & -And,| -Or,! -Not,&& -Double And, || -Double Or
# to know diff b/w &,&& and |,|| Consider Below Example
a<-22
b<-1
print(a&b) # Returns True if both Varibles Value >1 else False ,Even if one variables has number and other var as 0

a<-1
b<-0
print(a&&b)
# According to the R help ( ?' &&' ), “& and && indicate logical AND and | and || indicate logical OR. 
# The shorter form performs elementwise comparisons in much the same way as arithmetic operators. The longer
# form evaluates left to right examining only the first element of each vector

## Assignment Operator : Operators Used to Assign Variables 
# =,<-,->,<<-,->>
# But standard way is <-
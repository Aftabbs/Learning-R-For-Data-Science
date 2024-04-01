### Day 17 Vector Functions in R
1) rep(): This Function Replicates the sequence  of values of vectors times param is used to repeatation

rep(c(2,3,4),time=2) #2 3 4 2 3 4, time suggest repeatation if 2 provided then it repeats 2 times but it repeats the entire vector value 
# if we want repeat only the each value of vector then we use each
rep(c(2,3,4),each=2) #2 2 3 3 4 4 each val is repeatd twice
# Now if we want to repeat the value counts based on our choice for each values then
rep(c(1,2),time<-c(2,4))#1 1 2 2 2 2 ,1 will be repeated twice and 2will be repeated 4 times
rep(c(1:4),length.out=8) #1 2 3 4 1 2 3 4, repeats the same values 8 times



# The Main Diff B/w Rep and Seq is Rep() it repeats the values but in seq() it never repeats just follows the sequence
2) seq(): Generates regular sequence of values
seq(from=startpoint,to=endpoint,by=step)

seq(from=1,to=10,by=6) # 1 7
seq(from=-2.7,to=-3.6,length.out=8)


3) Any() and All() function:The any() and all() functions are handy shortcuts. 
They report whether any or all of their arguments are TRUE . 
The any() function then reports whether any of those values is TRUE . 
The all() function works similarly and reports if all of the values are TRUE .


# Ex1 : Any()
x<-1:10
any(x>5) #TRUE, any() this function signifies that if any one or more values
#present in x vector from1-10 should be > 5 that condition satifies and prints true else False

all(x>5)# FALSE,all() this function signifies that if all values
#present in x vector from1-10 should be  > 5 if this condition satifies then it  prints true else False


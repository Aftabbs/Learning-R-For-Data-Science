### Day 8 Switch Case in R
# if we want to provide multiple conditions by using Switch it will be Easy
# It is implemented in 2 ways i)based in Index Values ii) Based on Matching Values
# Syntax
#switch(expression,case1,case2...)
#Example 1) Based on Index Values
x<-switch(2,'Ram','Shyam','Sumit','Taran')
x  # Op is Shyam it Considered the 2nd Index Value and Transferred to X variable
x<-switch(5,'Ram','Shyam','Sumit','Taran')
x #op NULL coz there are only 4 values


# Example 2) Based on Matching Values
y<-'20'
x<-switch(y,'12'='Ram','16'='Shyam','20'='Sumit','22'='Taran')
print(x)  # Op is Sumit (it considers expression value y ie 20 and looks for the 
          # values in case which ever matches it prints its values)

y<-'12'
x<-switch(y,'12'='Ram','16'='Shyam','20'='Sumit','22'='Taran')
print(x)  # Op Ram


y<-'28'
x<-switch(y,'12'='Ram','16'='Shyam','20'='Sumit','22'='Taran')
print(x)  # NULL


# Rules to follow 
* the values and cases are Type sensitive (use matching Datatypes)
* There will be no Default Cases
* if there is no more than one match first match will be used
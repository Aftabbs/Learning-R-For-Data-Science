## Day 14 Builtin Functions in R 
#There are more than 1000 Builtin Functions in R so will consider only main Functions



cos(2) # Cos Value of 2 ie -0.41614
sqrt(4) # op 2
ceiling(5.6) # Op 6
floor(5.6) # op 5
trunc(c(1.2,3.4,2.6)) # Aka Truncate ie it removes the decimal value op 1,3,2
exp(2) # Exponenet
vector <- c(3, 5, 2, 3, 1, 4)

print(min(vector))
print(mean(vector))
print(median(vector))
print(sum(vector))
print(range(vector))
print(str(vector)) # shows the structure of an R object
print(length(vector)) # returns the number of items in an R object (a vector, a list, etc.)
print(sort(vector, decreasing=TRUE)) # sorts a vector in ascending or descending (decreasing=TRUE) order
print(exists('vector'))  ## note the quotation marks


# String related Functions
substr(var,start point,endpoint) # To Fetch/slice from a string and provides the total length of sliced strings for a certain point
x<-'123414132441'

substr(x,3,5) # 341

#Case modification
tolower('AFTAB')
toupper('aftab')

# To find pattern matching in a String Using grep()
vec1<-c('abcd','bcd','abcdbcda')
pattern<-'^abc'   # To find the pattern in Vec1 ^-wildcard char
print(grep(pattern,vec1)) # Op 1 3  (it is the index values present in vec1 that are matchin with pattern)

sum(1:10,5)# 55+5 =60




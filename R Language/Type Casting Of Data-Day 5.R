# Day 5 Conversion Of Datatypes in R
# To Convert any Datatype to numeric use below command
num1<-as.numeric(36L)
class(num1)
# Int to Numeric Conversion
num2<-as.numeric(TRUE)
class(num2)
# Bool to Numeric (Output will be 1 if True else if False 0)

num3<-as.numeric(3+4i)
class(num3)
# Complex to Numeric

# Str to Num Conversion
num5<-as.numeric('13bkka342')
class(num5)
print(num5)
# NOTE if string contains mix of numbers and letters the output will always be NA refer below to convert propert Str to Num
num6<-as.numeric('1342')
class(num6)
# This works 

# Int Conversion
int1<-as.integer(23.334)
class(int1)
# Num to int conversion

int2<-as.integer(TRUE)
class(int2)
#Op will be 1
# Same methods will be carried for string and Bool/Logical Conversion similar to Numeric
print(num5)


# Complex Conversion(default 0i will be added)
comp1<-as.complex(23.444)
print(comp1) # Op will be 23.44+0i 
class(comp1`) # Num to Comp conversion

comp2<-as.complex(34L)
# int to comp conv Op will be 34+0i
comp3<-as.complex(FALSE)
# Logical to complex by default FALSE will be converted to 0 so Op=0+0i
comp4<-as.complex('234')
# op =234+0i  (NA if letters are present in String)

## Logical Operators Conversion(True/False)
# NOTE : if 0 is provided to convert the output will always be FALSE ,
#else anything except 0 op will be TRUE but if String is passed the
#output will always be NA even if number only string is passed

lo1<-as.logical(1243.245)
print(lo1)

lo2<-as.logical('131dt3')
print(lo2)#
# Character Conversion
char1<-as.character(13243.5)
print(char1)
# Op ="13243.5"

# no matter any value provided to character conversion the op will always be converted and it will be in Double Quotes

# DATA TYPES IN R Pro DAY 4
# There are mainly 6 Data Types
# 1) Numeric : It is a Default Datatype ex: 12,-1,-900,23.3...
# 2) Integer : To Convert a Numeric to Integer We Use for ex var_int=36( But it is Numeric) Hence Use var_int=36L
# 3) Complex : Real + Imag var_comp=3+5i
# 4) Logical : TRUE or FALSE (Note It doesnt Represent 0 or 1)
# 5) Character : Basically a String ,Can be in ' ' or " " anything
# 6) RAW : A Datatype used to store Unuseful Information


# Examples
# Numeric
num<-12
# to know its dtype
class(num) # Output will be Numeric
typeof(num) # Output Will be Double

# Integer
var_int=36
class(var_int) # Output will be Numeric
var_int<-36L
class(var_int) # O/p Will be Integer
var_int<-as.integer(var_int) # Alternate way to Convert
class(var_int)


# Complex
var_comp<-10+8i
typeof(var_comp)

# Logical
var_log=TRUE
typeof(var_log)


# Char
var_char='asap'
class(var_char)

# RAW : Rarely Used only for Unuseful Info and Raw Bytes
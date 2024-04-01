## Day 21 Factors in R

#Categorical Variable:It is a discrete variable that has two or more categories
#It has Two Types
#1: Nominal: No Ordering in Variables ex: Male,Female
#2: Ordinal: There is Ordering in Variables ex:Temperature,sizes(s,M,L,XL,XXL)..


#Factors in R Programming Language are data structures that are implemented to 
#categorize the data or represent categorical data and store it on multiple levels. 
#They can be stored as integers with a corresponding label to every unique integer. 
#The R factors may look similar to character vectors, they are integers and care
#must be taken while using them as strings. The R factor accepts only a 
#restricted number of distinct values. For example, a data field such as gender 
#may contain values only from female, male, or transgender.

#Attributes of Factors in R Language
#x: It is the vector that needs to be converted into a factor.
#Levels: It is a set of distinct values which are given to the input vector x.
#Labels: It is a character vector corresponding to the number of labels.
#Exclude: This will mention all the values you want to exclude.
#Ordered: This logical attribute decides whether the levels are ordered.
#nmax: It will decide the upper limit for the maximum number of levels


# Creating a vector
x <-c("female", "male", "male", "female")
print(x)

# Converting the vector x into a factor 
# named gender
gender <-factor(x)
print(gender)
#[1] female male   male   female
#Levels: female male # By Default The Levels will be sorted in Alphabetical Or And Only consists Unique Values


# Creating a factor with levels defined by programmer
gender <- factor(c("female", "male", "male", "female"),
                 levels = c("female", "transgender", "male"));
gender

gender <- factor(c("female", "male", "male", "female"));
print(is.factor(gender))# TRUE


# Creating a factor with Labels defined by programmer Labels are just an Alternate naming for elements present in Factors

gender <- factor(c("female", "male", "male", "female"),
                 levels = c("female", "transgender", "male"),labels = c('F','T','M'))
gender
#[1] F M M F  # Trans is not provided in vec hence it is not printed, but in levls it is mentioned
#Levels: F T M


# Use Exclude to remove Trans
gender <- factor(c("female", "male", "male", "female","transgender"),
                 levels = c("female", "transgender", "male"),exclude = "transgender")
gender

# Trans is removed and replaced by NA


## Use gl() to genrate list of Factors
#gl(n=how many levels we need (int),k=For every level how many copies we need (Int),labels=Alternate naming for elements )
v1<-gl(3,4,labels = c('A','B','C'))
v1
# 3 levels ,4 repeatations
#[1] A A A A B B B B C C C C
#Levels: A B C


# Access Elements Of Factors
gender <- factor(c("female", "male", "male", "female"));
gender[3] # male ie 3rd element

gender <- factor(c("female", "male", "male", "female"));
gender[c(2, 4)] # 2nd and 4 element male ,Female

gender[-1] # except 1st element all elements are printed

# Modification of a Factor in R
# Replace 2nd element (male) to Female
gender <- factor(c("female", "male", "male", "female" ));
gender[2]<-"female"
gender

gender <- factor(c("female", "male", "male", "female" ));

# add new level
levels(gender) <- c(levels(gender), "other") 
gender[3] <- "other"
gender


# Important Functions in Factors
is.factor() # Returns TRUE/FALSe if Provided Input is Factor or Not
is.ordered() #Returns TRUE/FALSe if Factor is ordered in format or Not
as.factor() # Converts Vector to Factor
as.ordered() # Converts a Unordered Factor to Ordered Factor




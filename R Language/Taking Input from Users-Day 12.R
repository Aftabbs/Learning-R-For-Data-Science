### Day 12 ,Taking Input from Users

## There are actually 2 ways/main builtin functions to take users input
# 1) readline() - Most Commonly Used
# 2) scan() Less Used

#syntax 
# var1=readline(prompt='message')
# Ex1 
name<-readline(prompt = 'Enter Your Name :')
age<-readline(prompt = 'Enter your Age :')
print(paste("Hello My Name is :",name,'And My Age is :',age))

# paste function is generally used inside print() to concat multiple variables and add a text format


# Important Differnce B/w Paste() and pasteO()

# Paste
paste('hello','whatsup','123')

# op="hello whats up 123" 
#it combines all the individual str into a single str 
# and also it separates individual strings
# Only use when we have to separate and concat a str
paste('hello','whats up','123',sep='_')
# op="hello_whats up_123"



# Paste0
paste0('hello','whatsup','123')

op="hellowhatsup123"
# it combines all the individual str into 1 and removes the whitespace B/w Them.
# Paste0 is faster than paste()
# only use when we have to concat the string removing space(joined)
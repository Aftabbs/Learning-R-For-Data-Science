## Day 13 Write Function in R (Block of Code to perform Specific Task) Two types 
1) User Defined: Created by Users
2) Builtin Functions: Provided by R


## 1) User Defined : It order to create a Function we use keyword Function()

## Syntax 
function_name<-function(args1,args2....){body of code}

## Components of Userdefined Function
* Function Name
* Arguments
* Writing Body of Code inside {} including Return values
* Return Values



# Ex1: Print Squares of Num from 1-5(Function witout args)
new_function<-function(){
  for (i in 1:5){
    print(i^2)
  }
  
}

new_function()  # Call function


# Ex2 Add 3 Numbers (Function wit args)

add_3_nums<-function(x,y,z){
  res<-x+y+z
  print(res)
}

add_3_nums(1,2,3)

# we can even call directly by tier names
add_3_nums(x=1,y=2,z=3)


#Ex 3 Function wit Default args
new_function<-function(x=10,y=20){
  res<-x*y
  print(res)
}
new_function() # Op wiil be 200
# 2nd Approach (if we want to override the default values in args)
new_function(x=2,y=6) # Op will be 12 



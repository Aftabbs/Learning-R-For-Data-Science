## Day 9 Next And Break Statement in R
Next Statement is Used to Skip some Iterations/conditions based on Requirement
but doesnt stop the Loop
# Ex-1 Use For Loop to Demonstrate Print 1-10 numbers but skip 5th Number

x<-1:10  # Range(includes start and endpoint as well)
for (val in x){
  if (val==5){
    next
  }
  print(val)
}

# Break Statement: It is Used to Stop the Execution of Loop and Immediately exits from the Loop
# Ex-1 Consider same above example
x<-1:10
for (val in x){
  if (val==5){
    break
  }
  print(val)
}

#op=1,2,3,4 the loop exited at 5th iteration
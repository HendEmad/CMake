# foreach loops
set(names "Alice" "Bob" "Charlie" "David" "Eve")
foreach (name ${names})
    message("Name: ${name}")  
endforeach()
# Name: Alice
# Name: Bob
# Name: Charlie
# Name: David
# Name: Eve

# While loop
set(names "Hend" "Amr" "khaled" "Asmaa" "Maya")
#get the number of names in the list
list(LENGTH names names_length)
#Initalize a counter variable
set(counter 0)

#create a while loop to iterate through the list of names
while (counter LESS names_length)
    list(GET names ${counter} name)
    message("Name: ${name}")
    #increment the counter
    math(EXPR counter "${counter} + 1")
endwhile()
# Name: Hend
# Name: Amr
# Name: khaled
# Name: Asmaa
# Name: Maya
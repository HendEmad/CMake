# cmake lists
set(students1 steve morion dave)
set(students2 curly;Boe;Victor;John)
set(students3 "Mary Lily Domz")

message(${students1})  # stevemoriondave
message(${students2})  # curlyBoeVictorJohn
message(${students3})  # Mary Lily Domz

# To know how many elements in the list
list(LENGTH students1 STUDENTS1_LENGTH)
message("Students1 has ${STUDENTS1_LENGTH} elemetns")  # Students1 has 3 elemetns

# To append elements to a list
list(APPEND students2 "Kurk")
list(LENGTH students2 STUDENTS2_LENGTH) 
message("Students2 has ${STUDENTS2_LENGTH} elements")  # Students2 has 5 elements

list(LENGTH students3 students3_length)
message("Students3 has ${students3_length} elements")  # Students3 has 1 elements

# Get an element from a list
list(GET students2 2 The_leader)
message("The leader is ${The_leader}")  # The leader is Victor

# Option commands; for true/false (on/off) variables; false by default
option(OPTIMIZE "Do we want to optimize the operation?")
message("Are we optimizing? ${OPTIMIZE}")  # Are we optimizing? OFF

option(OPTIMIZE2 "Do we want to optimize the operation?" ON)
message("Are we optimizing? ${OPTIMIZE2}")  # Are we optimizing? ON

if(OPTIMIZE2)
    message("We are optimizing!")  # We are optimizing!
endif()

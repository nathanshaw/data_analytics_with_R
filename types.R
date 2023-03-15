# vectors are created using the c() (or combine) function
# vector of floats
f_vec <- c(2.5, 48.5, 101.5)

# create a vector of Ints, the L is for "long"
i_vec <- c(1L, 5L, 15L)

# create a vector of String
s_vec <- c("C", " is ", " an odd function")

# determine the datatype
typeof(s_vec)

# check to see type of vector
is.character(s_vec)
is.integer(s_vec)
is.double(s_vec)
is.logical(s_vec)

# All types of vectors can be named. 
# Names are useful for writing readable code and 
# describing objects in R. You can name the elements 
# of a vector with the names() function. 
# As an example, let’s assign the variable x to a 
# new vector with three elements. 
x <- c(1, 3, 5)

# You can use the names() function to assign a 
# different name to each element of the vector. 
names(x) <- c("a", "b", "c")

# Lists are different from atomic vectors 
# because their elements can be of any type—like 
# dates, data frames, vectors, matrices, and more. 
# Lists can even contain other lists. 
list_x = list("a", 1L, 1.75, TRUE)

list_x = str(list_x)

list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)

################ Pipes #################
# pipes are tools for expressing a sequence of 
# multiple operations, represented with "%>%"
# very similar to the => operator in ChucK seemingly
# where the output from certain functions can be piped into 
# other functions

############## Matrices ################
# A matrix is a two-dimensional collection of data 
# elements. This means it has both rows and columns.
# By contrast, a vector is a one-dimensional sequence 
# of data elements. But like vectors, matrices can 
# only contain a single data type. For example, you 
# can’t have both logicals and numerics in a matrix. 

# To create a matrix in R, you can use the matrix() 
# function. The matrix() function has two main arguments 
# that you enter in the parentheses. First, add a vector.
# The vector contains the values you want to place in the 
# matrix. Next, add at least one matrix dimension. You 
# can choose to specify the number of rows or the number 
# of columns by using the code nrow = or ncol =. 

# For example, imagine you want to create a 2x3 (two rows
# by three columns) matrix containing the values 3-8. 
# First, enter a vector containing that series of numbers:
# c(3:8). Then, enter a comma. Finally, enter nrow = 2 to 
# specify the number of rows. 
m = matrix(c(3:8), nrow = 2)
print(m)

# notice how 3:8 means 3 through 8 
# (just like with Python lists)
print(3:8)

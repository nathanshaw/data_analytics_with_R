library(lubridate)

# A date ("2016-08-16")
# A time within a day (“20:11:59 UTC")
# And a date-time. This is a date plus a time ("2018-03-31 18:15:48 UTC")
t = today()

# now() will return a datetime object, while today() will return a date object

############################################################################
# so, an odd thing with R is that <- and = both work as assignment operators
# Using the <- operator
x <- 5
# Using the = operator
x = 5
############################################################################

n = now()
# ummm, but then why is the type a double?
typeof(n)

# The ymd() function and its variations create dates. 
# To create a date-time from a date, add an underscore 
# and one or more of the letters h, m, and s 
# (hours, minutes, seconds) to the name of the function:
ymd_hms("2021-01-20 20:11:59")

# 
mdy_hm("01/20/2021 08:01")

# You can use the function as_date() to convert a date-time
# to a date. For example, put the current date-time—now()—in 
# the parentheses of the function. 
as_date(now())

# First, columns should be named. 
# Second, data frames can include many different types of data, 
# like numeric, logical, or character.
# Finally, elements in the same column should be of the same type.


# If you need to manually create a data frame in R, you can use 
# the data.frame() function. The data.frame() function takes vectors
# as input. In the parentheses, enter the name of the column, followed
# by an equals sign, and then the vector you want to input for that column.
# In this example, the x column is a vector with elements 1, 2, 3, and the 
# y column is a vector with elements 1.5, 5.5, 7.5. 
data.frame(x = c(1, 2, 3) , y = c(1.5, 5.5, 7.5))
x y

dir.create ("destination_folder")

# Use the file.create() function to create a blank file. Place the name 
# and the type of the file in the parentheses of the function. Your file 
# types will usually be something like .txt, .docx, or .csv.  

file.create (“new_text_file.txt”) 

file.create (“new_word_file.docx”) 

file.create (“new_csv_file.csv”) 

# If the file is successfully created when you run the function, R will return a value of TRUE (if not, R will return FALSE). 


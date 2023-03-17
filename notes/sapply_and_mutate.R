# create your own data frame:
id <- c(1:10)
name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")
job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")
employee <- data.frame(id, name, job_title)
head(employee)

## now lets split the names into first and last
# split_names is a list of charactor vectors with a dimension of 10x2spli
# To extract the first name from each element of the name list, we use the 
# sapply() function to apply the indexing function [[1]] to each element of 
# the name_words list. This selects the first element (i.e., the first name)
# of each character vector.
split_names <- strsplit(name, " ")
first_names <- sapply(split_names, "[[", 1)
last_names <- sapply(split_names, "[[", 2)

employee <- mutate(employee, first_name = first_names, last_name = last_names)

# now lets remove the name section
# this syntax means take everything except for the second index of this data frame and copy it
employee <- employee[, -2]
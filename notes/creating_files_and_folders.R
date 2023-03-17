
dir.create ("destination_folder")

# Use the file.create() function to create a blank file. Place the name 
# and the type of the file in the parentheses of the function. Your file 
# types will usually be something like .txt, .docx, or .csv.  

file.create (“new_text_file.txt”) 
file.create (“new_word_file.docx”) 
file.create (“new_csv_file.csv”) 

# If the file is successfully created when you run the function,
# R will return a value of TRUE (if not, R will return FALSE). 


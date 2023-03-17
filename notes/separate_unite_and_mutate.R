id <- c(1:10)
age <- c(30:39)
name <- c("Fred Fake", "Frank Fake", "Nasty Nate", "Killer Kimby", 
         "Freddie Real", "Rad McGee", "Real Man", "Jackie Jazz",
         "Ransom Rick", "Freddie Fate")

people_df <- data.frame(id, age, name)

separate(people_df, name, first_name)
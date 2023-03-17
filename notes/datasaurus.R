install.packages("Tmisc")
install.packages("tidyverse")
library(Tmisc)
library(tidyverse)
data(quartet)
View(quartet)
summary(quartet)
colnames(quartet)
ggplot(quartet, aes(x, y)) + geom_point()

# group the data by the set number using a pipe and order according to x
# the . in arrange means grab all the data from quartet for the operation
ordered_df <- quartet %>% group_by(set)
summary(ordered_df)

# now lets do some analysis on each of the four groups...
summary_df <- ordered_df %>% group_by(set) %>%summarise(., min(x), max(x), min(y), max(y), mean(x), mean(y), sd(x), sd(y), cor(x, y))
str(summary_df)
View(summary_df)

# now lets plot the data groups and visualise them to see the difference
ggplot(ordered_df, aes(x, y)) + geom_point() + geom_smooth(method=lm, se=FALSE) + facet_wrap(~set)

install.packages('datasauRus')

library(datasauRus)
summary(datasaurus_dozen)
ggplot(datasaurus_dozen, aes(x, y)) + geom_point() + facet_wrap(~dataset)

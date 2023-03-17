install.packages("ggplot2")
install.packages("palmerpenguins")
library(ggplot2)
library(palmerpenguins)

# in theory this remove rows which contain NA values
penguins_filtered_a <- na.omit(penguins)
colnames(penguins_filtered_a)

# this method will filter the data and only return rows with complete information
penguins_filtered_b <- penguins[complete.cases(penguins),]
colnames(penguins_filtered_b)

ggplot(data = penguins_filtered_a, mapping=aes(x=flipper_length_mm, y=bill_length_mm, color=island, shape=species, alpha=body_mass_g)) + 
  geom_smooth(method = "lm", se = FALSE) +
   geom_point()

# geom_jitter adds a bit of random noise to each point on the chart
# which makes it easier to see overalpping points
ggplot(data = penguins_filtered_a, mapping=aes(x=flipper_length_mm, y=bill_length_mm, color=island, shape=species, alpha=body_mass_g)) + 
  geom_smooth(method = "lm", se = FALSE) +
  geom_jitter()


# bar graph showing the number of species of each type
ggplot(data = penguins_filtered_a, mapping=aes(x=species, color=species)) +
  geom_bar()

# how would I make a stacked bar which shows the number of samples from each island?
library(dplyr)
penguins_counts <- penguins %>% 
  group_by(species, island) %>% 
  summarize(count = n())

ggplot(data = penguins_counts, mapping=aes(x=species, y=count, color=species, fill=island)) +
  geom_bar(stat="identity", position="stack") +
  labs(title="Number of Penguins by Species and Island",
       x = "Species",
       y = "Count",
       fill = "Island")

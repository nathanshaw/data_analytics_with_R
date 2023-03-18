## Diamonds - several different ways to print / preview the same data
## diamonds is a built-in dataset which is a part of R that can be used to
## test out new features and experiment
head(diamonds)

str(diamonds)

glimpse(diamonds)

colnames(diamonds)

## rename data
rename(diamonds, carat_new = carat)
rename(diamonds, carat_new = carat, cut_new = cut)

## summarize data...
### Another handy function for summarizing your data is `summarize().`
### You can use it to generate a wide range of summary statistics for 
### your data. For example, if you wanted to know what the mean for 
### `carat` was in this dataset, you could run the code in the chunk 
### below:
summarize(diamonds, mean_carat = mean(carat))

## this loads the data into a data structure to make it easier to work with
ddf <- data("diamonds")

## now lets view the data
View(diamonds)

ggplot(data = diamonds, aes(x = carat, y = price)) +
  geom_point()

# TODO - not sure why this is not working...
diamonds %>% 
  filter(cut == "ideal") %>% 
  ggplot(aes(x = carat, y = price)) +
  geom_point()

ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point()
ggsave("outputs/diamonds_carat_and_price_scatter_plot_scale_2x.png", scale=2)

ggplot(data = diamonds, aes(x = cut)) + geom_bar()

ggplot(data = diamonds, aes(y = price, x = carat, color = clarity)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE) +
  facet_grid(~cut)


## Wow, that's a busy visual! Sometimes when you are trying to represent
## many different aspects of your data in a visual, it can help to 
## separate out some of the components. For example, you could create a 
## different plot for each type of cut. `ggplot2` makes it easy to do 
## this with the `facet_wrap()` function:
ggplot(data = diamonds, aes(x = carat, y = price, color = cut)) +
  geom_point() +
  facet_wrap(~cut)

## cool, not here is a stacked bar chart showing cuts and clarity
ggplot(diamonds, aes(x=cut, fill=clarity)) + geom_bar()

# The loess smoothing process is best for smoothing 
# plots with less than 1000 points.
ggplot(diamonds, aes(x=carat, y=price)) + 
  geom_point() +       
  geom_smooth(method="loess")

# Gam smoothing, or generalized additive model 
# smoothing, is useful for smoothing plots with a large
# number of points. 
ggplot(diamonds, aes(x=carat, y=price)) + 
  geom_point() +        
  geom_smooth(method="gam", 
              formula = y ~s(x)) +
    facet_grid(clarity~cut)


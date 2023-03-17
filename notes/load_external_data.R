## read the elden ring dataset
data_weapons = read_csv("/Users/nathan/workspace/data_analytics_with_R/data/elden-ring-data/weapons.csv")
data_spells = read_csv("/Users/nathan/workspace/data_analytics_with_R/data/elden-ring-data/spells.csv")
head(data_weapons)

# there are other readr functions for loading data of different types
# such as 
# read_excel()
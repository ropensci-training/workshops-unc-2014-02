

library(scales)
library(ggplot2)
library(doMC)
library(plyr)
library(rnoaa)



urls <- seaiceeurls(mo='Apr', pole='N')[1:12]



# registerDoMC(cores = 2)
# out <- llply(urls, noaa_seaice, storepath="~/", .parallel = TRUE)
out <- lapply(urls, noaa_seaice, storepath="~/")
names(out) <- seq(1979, 1990, 1)
df <- ldply(out)
head(df)



ggplot(df, aes(long, lat, group=group)) + 
  geom_polygon(fill = "steelblue") +
  theme_bw() +
  facet_wrap(~ .id)



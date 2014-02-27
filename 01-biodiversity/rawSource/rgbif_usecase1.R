

opts_chunk$set(comment=NA, warning=FALSE, message=FALSE, fig.width=7, fig.height=6)



library(rgbif)
library(dismo)
library(maptools)
library(plyr)



files <- list.files(paste(system.file(package="dismo"), '/ex', sep=''), 'grd', full.names=TRUE)
predictors <- stack(files)



data(wrld_simpl)



namesdf <- name_lookup(query='bradypus*', rank="SPECIES", limit=60)$data
head(namesdf)



keys <- na.omit(unique(namesdf$nubKey))



df <- occ_search(keys, georeferenced=TRUE, limit=100, return='data')
df <- df[sapply(df, class) == "data.frame"]
df2 <- ldply(df)
df2 <- data.frame(lon=df2$longitude, lat=df2$latitude)



plot(predictors, 1)
plot(wrld_simpl, add=TRUE)
points(df2, col='blue')



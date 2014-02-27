

library(spocc)

red_tailed_hawk <- occ(query = "Buteo jamaicensis", from = c("gbif","ebird"),limit=35, ebirdopts = list(region='US'))

rt_hawk <-  occ2df(red_tailed_hawk)




#### Map with leaflet.js
mapleaflet(rt_hawk)

## put the map up as a gist
mapgist(data = rt_hawk)




 spp <- c('Accipiter gentilis','Accipiter striatus','Accipiter cooperii')
dat <- occ(query = spp, from = "gbif", gbifopts = list(georeferenced = TRUE))
dat <- fixnames(dat)
dat <- occ2df(dat)
mapgist(data = dat, color = c("#976AAE", "#6B944D", "#BD5945"))





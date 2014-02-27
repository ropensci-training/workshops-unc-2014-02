

library(spocc)
library(rCharts)



out <- occ(query='Accipiter striatus', from='gbif')
out # prints summary of output data
out$gbif # GBIF data w/ metadata
out$ebird$data # empty
out$gbif$meta #  metadata, your query parameters, time the call executed, etc. 
out$gbif$data # just data



out <- occ(query='Accipiter striatus', from=c('gbif','bison'))
df <- occ2df(out)
head( df ); tail( df )



## dat <- occ(query='Danaus plexippus', from='gbif', gbifopts=list(georeferenced=TRUE))
## dat <- occ2df(dat)
## mapleaflet(data=dat)



## spp <- c('Danaus plexippus','Accipiter striatus','Pinus contorta')
## dat <- occ(query=spp, from='gbif', gbifopts=list(georeferenced=TRUE))
## dat <- fixnames(dat)
## dat <- occ2df(dat)
## mapgist(data=dat, color=c("#976AAE","#6B944D","#BD5945"))




library(spocc)




out <- occ(query='Accipiter striatus', from='gbif')
out # prints summary of output data
out$gbif # GBIF data w/ metadata
out$ebird$data # empty
out$gbif$meta #  metadata, your query parameters, time the call executed, etc. 
out$gbif$data # just data



out <- occ(query='Accipiter striatus', from=c('gbif','bison'))
df <- occ2df(out)
head( df ); tail( df )



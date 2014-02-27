

library(spocc)
library(rgbif)
## Get some of our hawk data
### Prevent strings from becoming factors
options(stringsAsFactors = FALSE)
spp <- c('Accipiter gentilis','Accipiter striatus','Accipiter cooperii')
dat <- occ(query = spp, from = "gbif", gbifopts = list(georeferenced = TRUE))
dat <- fixnames(dat)
dat <- occ2df(dat)

map_dat <- stylegeojson(input = dat, var = "name", color = c("#8BA8D9", "#8BD99D", "#FFEF0D"), symbol="zoo")
mapgist(map_dat)



### Add common names
dat$common_name <- dat$name
dat$common_name[dat$name %in% 'Accipiter gentilis'] <- "Northern goshawk"
dat$common_name[dat$name %in% 'Accipiter striatus'] <- "Sharp-shinned hawk"
dat$common_name[dat$name %in% 'Accipiter cooperii'] <- "Coopers hawk"


map_dat <- stylegeojson(input = dat, var = "name", color = c("#8BA8D9", "#8BD99D", "#FFEF0D"), size="small")
mapgist(map_dat)




spp <- c('Accipiter gentilis','Accipiter striatus','Accipiter cooperii')
dat <- occ(query = spp, from = c("gbif","inat"), gbifopts = list(georeferenced = TRUE))
dat <- fixnames(dat)
dat <- occ2df(dat)

map_dat <- stylegeojson(input = dat, var_col = "name", color = c("#8BA8D9", "#8BD99D", "#FFEF0D"), var_sym = "prov", symbol=c("g","i"))
mapgist(map_dat)




More advanced GeoJSON maps
========================================================

We can style our GeoJSON as well with some functions from `rgbif`


```r
library(spocc)
library(rgbif)
## Get some of our hawk data Prevent strings from becoming factors
options(stringsAsFactors = FALSE)
spp <- c("Accipiter gentilis", "Accipiter striatus", "Accipiter cooperii")
dat <- occ(query = spp, from = "gbif", gbifopts = list(georeferenced = TRUE))
dat <- fixnames(dat)
dat <- occ2df(dat)

map_dat <- stylegeojson(input = dat, var = "name", color = c("#8BA8D9", "#8BD99D", 
    "#FFEF0D"), symbol = "zoo")
mapgist(map_dat)
```

```
## Success! File is at /Users/tedhart/Dropbox/workspace/workshops-unc-2014-02/02-mapping/rmdSrc/gistmap.geojson
## Your gist has been published
## View gist at https://gist.github.com/emhart/9244024
## Embed gist with <script src="https://gist.github.com/emhart/9244024.js"></script>
```


You can add different symbols from mapbox as well, see the full list [here.](https://www.mapbox.com/maki/)

You could also add custom data fields that appear in the pop-ups


```r
### Add common names
dat$common_name <- dat$name
dat$common_name[dat$name %in% "Accipiter gentilis"] <- "Northern goshawk"
dat$common_name[dat$name %in% "Accipiter striatus"] <- "Sharp-shinned hawk"
dat$common_name[dat$name %in% "Accipiter cooperii"] <- "Coopers hawk"


map_dat <- stylegeojson(input = dat, var = "name", color = c("#8BA8D9", "#8BD99D", 
    "#FFEF0D"), size = "small")
mapgist(map_dat)
```

```
## Success! File is at /Users/tedhart/Dropbox/workspace/workshops-unc-2014-02/02-mapping/rmdSrc/gistmap.geojson
## Your gist has been published
## View gist at https://gist.github.com/emhart/9244025
## Embed gist with <script src="https://gist.github.com/emhart/9244025.js"></script>
```


We can also add some faceting to our GeoJSON maps by modifying both color and symbol.  Let's say we want to change the symbol based on data source.


```r
spp <- c("Accipiter gentilis", "Accipiter striatus", "Accipiter cooperii")
dat <- occ(query = spp, from = c("gbif", "inat"), gbifopts = list(georeferenced = TRUE))
dat <- fixnames(dat)
dat <- occ2df(dat)

map_dat <- stylegeojson(input = dat, var_col = "name", color = c("#8BA8D9", 
    "#8BD99D", "#FFEF0D"), var_sym = "prov", symbol = c("g", "i"))
mapgist(map_dat)
```

```
## Success! File is at /Users/tedhart/Dropbox/workspace/workshops-unc-2014-02/02-mapping/rmdSrc/gistmap.geojson
## Your gist has been published
## View gist at https://gist.github.com/emhart/9244028
## Embed gist with <script src="https://gist.github.com/emhart/9244028.js"></script>
```


We can also obviously extend this to sources beyond just our species occurrence data...




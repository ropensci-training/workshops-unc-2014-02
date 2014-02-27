### spocc - Combining data

### Load libraries


```r
library(spocc)
library(rCharts)
```


### spocc unifies access to biodiversity data across sources


```r
out <- occ(query = "Accipiter striatus", from = "gbif")
out  # prints summary of output data
```

```
## Summary of results - occurrences found for: 
##  gbif  : 25 records across 1 species 
##  bison :  0 records across 1 species 
##  inat  :  0 records across 1 species 
##  ebird :  0 records across 1 species 
##  ecoengine :  0 records across 1 species 
##  antweb :  0 records across 1 species
```

```r
out$gbif  # GBIF data w/ metadata
```

```
## $meta
## $meta$source
## [1] "gbif"
## 
## $meta$time
## [1] "2014-02-26 22:19:58 EST"
## 
## $meta$query
## [1] "Accipiter striatus"
## 
## $meta$type
## [1] "sci"
## 
## $meta$opts
## list()
## 
## 
## $data
## $data$Accipiter_striatus
##                  name       key longitude latitude prov
## 1  Accipiter striatus 768992325    -76.10    4.724 gbif
## 2  Accipiter striatus 773408845    -97.32   32.821 gbif
## 3  Accipiter striatus 773414146   -122.27   37.771 gbif
## 4  Accipiter striatus 859267562   -108.34   36.732 gbif
## 5  Accipiter striatus 859267548   -108.34   36.732 gbif
## 6  Accipiter striatus 859267717   -108.34   36.732 gbif
## 7  Accipiter striatus 773432602   -122.78   38.613 gbif
## 8  Accipiter striatus 866495578   -122.27   37.804 gbif
## 9  Accipiter striatus 773440541    -98.00   32.800 gbif
## 10 Accipiter striatus 773423188    -76.54   38.688 gbif
## 11 Accipiter striatus 773430206   -117.06   32.552 gbif
## 12 Accipiter striatus 866495998    -72.59   43.853 gbif
## 13 Accipiter striatus 866510912   -122.44   37.432 gbif
## 14 Accipiter striatus 868487120    -83.83   42.333 gbif
## 15 Accipiter striatus        NA        NA       NA gbif
## 16 Accipiter striatus 833024105   -105.16   40.678 gbif
## 17 Accipiter striatus 859564612   -105.29   40.038 gbif
## 18 Accipiter striatus 866558230   -122.34   37.846 gbif
## 19 Accipiter striatus 866606961    -71.76   44.754 gbif
## 20 Accipiter striatus 889487957    -76.72    1.975 gbif
## 21 Accipiter striatus 866576503   -122.60   37.876 gbif
## 22 Accipiter striatus 866577761    -75.95   37.212 gbif
## 23 Accipiter striatus 866581620    -93.99   32.904 gbif
## 24 Accipiter striatus 866581960    -73.13   44.342 gbif
## 25 Accipiter striatus 866584470   -104.10   20.591 gbif
```

```r
out$ebird$data  # empty
```

```
## $Accipiter_striatus
## data frame with 0 columns and 0 rows
```

```r
out$gbif$meta  #  metadata, your query parameters, time the call executed, etc. 
```

```
## $source
## [1] "gbif"
## 
## $time
## [1] "2014-02-26 22:19:58 EST"
## 
## $query
## [1] "Accipiter striatus"
## 
## $type
## [1] "sci"
## 
## $opts
## list()
```

```r
out$gbif$data  # just data
```

```
## $Accipiter_striatus
##                  name       key longitude latitude prov
## 1  Accipiter striatus 768992325    -76.10    4.724 gbif
## 2  Accipiter striatus 773408845    -97.32   32.821 gbif
## 3  Accipiter striatus 773414146   -122.27   37.771 gbif
## 4  Accipiter striatus 859267562   -108.34   36.732 gbif
## 5  Accipiter striatus 859267548   -108.34   36.732 gbif
## 6  Accipiter striatus 859267717   -108.34   36.732 gbif
## 7  Accipiter striatus 773432602   -122.78   38.613 gbif
## 8  Accipiter striatus 866495578   -122.27   37.804 gbif
## 9  Accipiter striatus 773440541    -98.00   32.800 gbif
## 10 Accipiter striatus 773423188    -76.54   38.688 gbif
## 11 Accipiter striatus 773430206   -117.06   32.552 gbif
## 12 Accipiter striatus 866495998    -72.59   43.853 gbif
## 13 Accipiter striatus 866510912   -122.44   37.432 gbif
## 14 Accipiter striatus 868487120    -83.83   42.333 gbif
## 15 Accipiter striatus        NA        NA       NA gbif
## 16 Accipiter striatus 833024105   -105.16   40.678 gbif
## 17 Accipiter striatus 859564612   -105.29   40.038 gbif
## 18 Accipiter striatus 866558230   -122.34   37.846 gbif
## 19 Accipiter striatus 866606961    -71.76   44.754 gbif
## 20 Accipiter striatus 889487957    -76.72    1.975 gbif
## 21 Accipiter striatus 866576503   -122.60   37.876 gbif
## 22 Accipiter striatus 866577761    -75.95   37.212 gbif
## 23 Accipiter striatus 866581620    -93.99   32.904 gbif
## 24 Accipiter striatus 866581960    -73.13   44.342 gbif
## 25 Accipiter striatus 866584470   -104.10   20.591 gbif
```


And you can squash together data from sources easily


```r
out <- occ(query = "Accipiter striatus", from = c("gbif", "bison"))
```

```
## Error: unused argument (what = "points")
```

```r
df <- occ2df(out)
head(df)
```

```
##                 name longitude latitude prov
## 1 Accipiter striatus    -76.10    4.724 gbif
## 2 Accipiter striatus    -97.32   32.821 gbif
## 3 Accipiter striatus   -122.27   37.771 gbif
## 4 Accipiter striatus   -108.34   36.732 gbif
## 5 Accipiter striatus   -108.34   36.732 gbif
## 6 Accipiter striatus   -108.34   36.732 gbif
```

```r
tail(df)
```

```
##                  name longitude latitude prov
## 20 Accipiter striatus    -76.72    1.975 gbif
## 21 Accipiter striatus   -122.60   37.876 gbif
## 22 Accipiter striatus    -75.95   37.212 gbif
## 23 Accipiter striatus    -93.99   32.904 gbif
## 24 Accipiter striatus    -73.13   44.342 gbif
## 25 Accipiter striatus   -104.10   20.591 gbif
```



### Make a map using Leaflet.js, a javascript mapping library


```r
dat <- occ(query = "Danaus plexippus", from = "gbif", gbifopts = list(georeferenced = TRUE))
dat <- occ2df(dat)
mapleaflet(data = dat)
```



### Make a map using GitHub gists

If you have a Github Account, you can get an interactive map on Github in one line of code. The map will open in your default browser. 


```r
spp <- c("Danaus plexippus", "Accipiter striatus", "Pinus contorta")
dat <- occ(query = spp, from = "gbif", gbifopts = list(georeferenced = TRUE))
dat <- fixnames(dat)
dat <- occ2df(dat)
mapgist(data = dat, color = c("#976AAE", "#6B944D", "#BD5945"))
```


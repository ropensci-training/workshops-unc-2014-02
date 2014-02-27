Wrapping up GeoJSON, some rMaps
========================================================

So far we've covered how to visualize data from within rOpenSci packages, but it's easy with almost any data source.


```r
### This is all the code to clean the data from source, but we'll use a
### cleaned version in class

## Grab our beer data
options(stringsAsFactors = FALSE)

### Source page:
### https://opendata.socrata.com/Government/UtahBeerTaxmap/6i4w-nzeq
utahBT <- read.csv("http://opendata.socrata.com/api/views/6i4w-nzeq/rows.csv")
## Clean beer data

# delete header
utahBT <- utahBT[-1, ]

### parse lat lon data
lat <- rep(NA, dim(utahBT)[1])
lon <- rep(NA, dim(utahBT)[1])
loc_text <- strsplit(utahBT$Location, ",")
for (i in 1:length(loc_text)) {
    if (length(loc_text[[i]]) > 2) {
        lat[i] <- as.numeric(strsplit(loc_text[[i]][2], "(", fixed = T)[[1]][2])
        lon[i] <- as.numeric(strsplit(loc_text[[i]][3], ")"))
    }
}


utahBT$lat <- lat
utahBT$lon <- lon
utahBT <- utahBT[, -3]
utahBT <- utahBT[!is.na(utahBT$lat), ]
colnames(utahBT) <- c("City", "Distribution", "latitude", "longitude")
utahBT$Distribution <- as.numeric(gsub("$", "", utahBT$Distribution, fixed = T))
write.csv(utahBT, "data/utahbt.csv")
```

```
## Warning: cannot open file 'data/utahbt.csv': No such file or directory
```

```
## Error: cannot open the connection
```

```r


## To download data use this URL:
## https://raw.github.com/ropensci/workshops-unc-2014-02/master/data/utahbt.csv
## Now we can add some categories, let's start with binning

utahBT$taxLev <- cut(log(utahBT$Distribution), breaks = 10, labels = F)
utahBT$"marker-color" <- colorRampPalette(c("blue", "red"))(10)[utahBT$taxLev]
utahBT$"marker-size" <- rep("small", dim(utahBT)[1])
mapgist(utahBT)
```

```
## Success! File is at /Users/tedhart/Dropbox/workspace/workshops-unc-2014-02/02-mapping/rmdSrc/gistmap.geojson
## Your gist has been published
## View gist at https://gist.github.com/emhart/9244087
## Embed gist with <script src="https://gist.github.com/emhart/9244087.js"></script>
```




We can also work with shap files



```r

togeojson(input = "data/abiemagn/abiemagn.shp", method = "local", destpath = paste(getwd(), 
    "/", sep = ""), outfilename = "abiesmagmap")
```

```
## Error: Error opening SHP file
```

```r
gist("abiesmagmap.geojson", description = "Abies magnifica polygons")
```

```
## Warning: cannot open file 'abiesmagmap.geojson': No such file or directory
```

```
## Error: cannot open the connection
```


We can also edit this by hand and push again, see https://github.com/mapbox/simplestyle-spec/tree/master/1.1.0


Here's some bleeding edge stuff with rMaps


```r
library(rMaps)
map <- Leaflet$new()
map$setView(c(44.4758, -73.2119), zoom = 15)
map$tileLayer(provider = "OpenStreetMap.Mapnik")
map$marker(c(44.4758, -73.2119), bindPopup = "This is where I met Brian")
map
```

```
## <iframe src='
## figure/rmaps.html
## ' scrolling='no' seamless class='rChart 
## leaflet
##  '
## id=iframe-
## chart154a794ee74b
## ></iframe>
## <style>iframe.rChart{ width: 100%; height: 400px;}</style>
```






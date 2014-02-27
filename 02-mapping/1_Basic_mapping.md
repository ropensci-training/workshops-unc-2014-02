Creating maps with SPOCC
========================================================

*What is geoJSON?*

A way to encode geographic information as a JSON object, and render it on the web.
---

*A simple example with species occurrence data*

First let's grab some data


```r
library(spocc)

red_tailed_hawk <- occ(query = "Buteo jamaicensis", from = c("gbif", "ebird"), 
    limit = 35, ebirdopts = list(region = "US"))

rt_hawk <- occ2df(red_tailed_hawk)
```



Now we can create some maps.


```r
#### Map with leaflet.js
mapleaflet(rt_hawk)
```

```
## 
## File saved under ./data.geojson
## Your leaflet map has been saved under /Users/tedhart/Dropbox/workspace/workshops-unc-2014-02/02-mapping/rmdSrc/map/map.html
```

```r

## put the map up as a gist
mapgist(data = rt_hawk)
```

```
## Success! File is at /Users/tedhart/Dropbox/workspace/workshops-unc-2014-02/02-mapping/rmdSrc/gistmap.geojson
## Your gist has been published
## View gist at https://gist.github.com/emhart/9243895
## Embed gist with <script src="https://gist.github.com/emhart/9243895.js"></script>
```



Let's try this with multiple species


```r
spp <- c("Accipiter gentilis", "Accipiter striatus", "Accipiter cooperii")
dat <- occ(query = spp, from = "gbif", gbifopts = list(georeferenced = TRUE))
dat <- fixnames(dat)
dat <- occ2df(dat)
mapgist(data = dat, color = c("#976AAE", "#6B944D", "#BD5945"))
```

```
## Success! File is at /Users/tedhart/Dropbox/workspace/workshops-unc-2014-02/02-mapping/rmdSrc/gistmap.geojson
## Your gist has been published
## View gist at https://gist.github.com/emhart/9243897
## Embed gist with <script src="https://gist.github.com/emhart/9243897.js"></script>
```

```r

```


If you want to render it full screen, you just append `https://render.github.com/view/geojson?url=` to your source, so the previous map can become: `https://render.github.com/view/geojson?url=https://gist.githubusercontent.com/emhart/9191388/raw/341475808fbadf26cf4eeb2b237f9bd9cae39e4d/gistmap.geojson`

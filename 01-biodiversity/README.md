
# Biodiversity suite at rOpenSci

1. GBIF, Bison, iNaturalist, Berkeley Ecoengine, spocc

* [rgbif](http://www.github.com/ropensci/rgbif)
* [rbison](http://www.github.com/ropensci/rbison)
* [rinat](http://www.github.com/ropensci/rinat)
* [ecoengine](http://www.github.com/ropensci/ecoengine)
* [spocc](http://www.github.com/ropensci/spocc)

2. World Bank Climate data, NOAA climate data

* [rWBclimate](http://www.github.com/ropensci/rwbclimate)
* [rnoaa](http://www.github.com/ropensci/rnoaa)

---

## Install these packages locally

```coffee
install.packages(c("rgbif","rbison","rinat","ecoengine","rWBclimate"))
```

Packages not currently on CRAN

```coffee
install.packages("devtools")
library(devtools)
install_github("rnoaa", "ropensci")
install_github("spocc", "ropensci")
```

Today we'll cover:

* Basic niche modeling with [gbif data](https://github.com/ropensci/workshops-unc-2014-02/blob/master/01-biodiversity/rgbif_usecase1.md)
* Find what countries species [records are foud in](https://github.com/ropensci/workshops-unc-2014-02/blob/master/01-biodiversity/rgbif_usecase2.md)
* Getting species data from multiple sources [with spocc](https://github.com/ropensci/workshops-unc-2014-02/blob/master/01-biodiversity/spocc.md)
* Downloading GCM data from the [world bank](https://github.com/ropensci/workshops-unc-2014-02/blob/master/01-biodiversity/world-bank-climate.md)
* Downloading and plotting [NOAA sea ice data]()

If you want to follow along with just the raw source code from the lessons, check [the raw source directory](https://github.com/ropensci/workshops-unc-2014-02/tree/master/01-biodiversity/rawSource)

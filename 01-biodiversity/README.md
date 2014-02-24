
# Biodiversity suite at rOpenSci

1. GBIF, Bison, iNaturalist, Berkeley Ecoengine, spocc
    * rgbif
    * rbison
    * rinat
    * ecoengine
    * spocc
2. World Bank Climate data, NOAA climate data
    * rWBclimate
    * rnoaa

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
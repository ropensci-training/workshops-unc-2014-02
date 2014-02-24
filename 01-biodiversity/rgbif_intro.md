## rgbif intro

### Load rgbif


```r
library(rgbif)
```


There are two main things to work with: names and occurrences

### Names

* `name_lookup`
* `name_suggest`
* `name_backbone`
* `name_usage`


```r
name_lookup(query = "Puma concolor")
```

```
## $meta
##   offset limit endOfRecords count
## 1      0    20        FALSE   149
## 
## $data
##          key  nubKey parentKey        parent     order  family genus
## 1  125812287 2435099 125793753          Puma Carnivora Felidae  Puma
## 2    2435099 2435099   2435098          Puma Carnivora Felidae  Puma
## 3  116851859 2435099 116855020          Puma Carnivora Felidae  Puma
## 4    7193927 7193927   2435099 Puma concolor Carnivora Felidae  Puma
## 5  110439500 6164590 116855020          Puma Carnivora Felidae  Puma
## 6  110585539 7193927 116855020          Puma Carnivora Felidae  Puma
## 7  110589106      NA 116855020          Puma Carnivora Felidae  Puma
## 8    6164590 6164590   2435099 Puma concolor Carnivora Felidae  Puma
## 9  110606334 6164590 116855020          Puma Carnivora Felidae  Puma
## 10 116838936 6164600 116855020          Puma Carnivora Felidae  Puma
## 11   6164600 6164600   2435099 Puma concolor Carnivora Felidae  Puma
## 12 106663137 2435099 105976359          Puma Carnivora Felidae  Puma
## 13 107729382 2435099 107729381          Puma Carnivora Felidae  Puma
## 14 128268019 2435099 131424145          Puma      <NA>    <NA>  Puma
## 15 107363645 2435099 107363530          Puma Carnivora Felidae  Puma
## 16 119806678 2435099 127835041          Puma Carnivora Felidae  Puma
## 17 103371273 2435099 103371272          Puma Carnivora Felidae  Puma
## 18 110266965 2435099 124846146          Puma Carnivora Felidae  Puma
## 19 131879553 2435099 131880613          Puma Carnivora Felidae  Puma
## 20 131497865 2435099 131498311          Puma Carnivora Felidae  Puma
##     orderKey familyKey  genusKey               canonicalName
## 1  131717571 131717588 125793753               Puma concolor
## 2        732      9703   2435098               Puma concolor
## 3  110609337 116632354 116855020               Puma concolor
## 4        732      9703   2435098      Puma concolor concolor
## 5  110609337 116632354 116855020       Puma concolor couguar
## 6  110609337 116632354 116855020      Puma concolor concolor
## 7  110609337 116632354 116855020 Puma concolor costaricensis
## 8        732      9703   2435098       Puma concolor couguar
## 9  110609337 116632354 116855020       Puma concolor couguar
## 10 110609337 116632354 116855020         Puma concolor coryi
## 11       732      9703   2435098         Puma concolor coryi
## 12 106151875 106661479 105976359               Puma concolor
## 13 107658447 107679348 107729381               Puma concolor
## 14        NA        NA 131424145               Puma concolor
## 15 107240212 107240258 107363530               Puma concolor
## 16 127796172 127796184 127835041               Puma concolor
## 17 103371070 103371072 103371272               Puma concolor
## 18 124846108 124846134 124846146               Puma concolor
## 19 131880607 131880610 131880613               Puma concolor
## 20 131498308 131498309 131498311               Puma concolor
##           authorship   nameType       rank numOccurrences  kingdom
## 1   (Linnaeus, 1771) WELLFORMED    SPECIES              0     <NA>
## 2   (Linnaeus, 1771) WELLFORMED    SPECIES              0 Animalia
## 3   (Linnaeus, 1771) WELLFORMED    SPECIES              0 Animalia
## 4                    WELLFORMED SUBSPECIES              0 Animalia
## 5                    WELLFORMED SUBSPECIES              0 Animalia
## 6   (Linnaeus, 1771) WELLFORMED SUBSPECIES              0 Animalia
## 7    (Merriam, 1901) WELLFORMED SUBSPECIES              0 Animalia
## 8       (Kerr, 1792) WELLFORMED SUBSPECIES              0 Animalia
## 9       (Kerr, 1792) WELLFORMED SUBSPECIES              0 Animalia
## 10       Bangs, 1899 WELLFORMED SUBSPECIES              0 Animalia
## 11     (Bangs, 1899) WELLFORMED SUBSPECIES              0 Animalia
## 12                   WELLFORMED    SPECIES              0  Metazoa
## 13                   WELLFORMED    SPECIES              0  Metazoa
## 14                   WELLFORMED    SPECIES              0     <NA>
## 15  (Linnaeus, 1771) WELLFORMED    SPECIES              0 Animalia
## 16  (Linnaeus, 1771) WELLFORMED    SPECIES              0 Animalia
## 17    Linnaeus, 1771 WELLFORMED    SPECIES              0 Animalia
## 18  (Linnaeus, 1771) WELLFORMED    SPECIES              0 Animalia
## 19                     DOUBTFUL       <NA>              0 Animalia
## 20  (Linnaeus, 1771) WELLFORMED       <NA>              0 Animalia
##      phylum    clazz kingdomKey phylumKey  classKey
## 1      <NA>     <NA>         NA        NA        NA
## 2  Chordata Mammalia          1        44       359
## 3  Chordata Mammalia  116630539 116842680 116665331
## 4  Chordata Mammalia          1        44       359
## 5  Chordata Mammalia  116630539 116842680 116665331
## 6  Chordata Mammalia  116630539 116842680 116665331
## 7  Chordata Mammalia  116630539 116842680 116665331
## 8  Chordata Mammalia          1        44       359
## 9  Chordata Mammalia  116630539 116842680 116665331
## 10 Chordata Mammalia  116630539 116842680 116665331
## 11 Chordata Mammalia          1        44       359
## 12 Chordata Mammalia  106148414 106522535 106223020
## 13 Chordata     <NA>  107702209 107661531        NA
## 14     <NA>     <NA>         NA        NA        NA
## 15 Chordata Mammalia  107264513 107216119 107239517
## 16 Chordata Mammalia  127795487 127795699 127795847
## 17     <NA>     <NA>  115140331        NA        NA
## 18 Chordata Mammalia  124836057 124839309 124846085
## 19 Chordata Mammalia  131880219 131880220 131880603
## 20 Chordata Mammalia  131498076 131498077 131498307
## 
## $facets
## NULL
```



```r
name_suggest(q = "Puma concolor")
```

```
##        key                                        scientificName
## 1  2435099                        Puma concolor (Linnaeus, 1771)
## 2  7193927                         Puma concolor subsp. concolor
## 3  6164618                  Puma concolor browni (Merriam, 1903)
## 4  6164622                     Puma concolor puma (Molina, 1782)
## 5  6164591    Puma concolor kaibabensis (Nelson & Goldman, 1931)
## 6  6164623                   Puma concolor cabrerae Pocock, 1940
## 7  6164624           Puma concolor costaricensis (Merriam, 1901)
## 8  6164600                     Puma concolor coryi (Bangs, 1899)
## 9  6164603            Puma concolor missoulensis (Goldman, 1943)
## 10 6164610             Puma concolor hippolestes (Merriam, 1897)
## 11 6164589       Puma concolor anthonyi (Nelson & Goldman, 1931)
## 12 6164592          Puma concolor oregonensis (Rafinesque, 1832)
## 13 6164602              Puma concolor improcera (Phillips, 1912)
## 14 6164604              Puma concolor stanleyana (Goldman, 1938)
## 15 6164608                 Puma concolor californica (May, 1896)
## 16 6164611       Puma concolor mayensis (Nelson & Goldman, 1929)
## 17 6164620                     Puma concolor cougar (Kerr, 1792)
## 18 6164590                    Puma concolor couguar (Kerr, 1792)
## 19 6164599                  Puma concolor azteca (Merriam, 1901)
## 20 6164594 Puma concolor vancouverensis (Nelson & Goldman, 1932)
##          rank
## 1     SPECIES
## 2  SUBSPECIES
## 3  SUBSPECIES
## 4  SUBSPECIES
## 5  SUBSPECIES
## 6  SUBSPECIES
## 7  SUBSPECIES
## 8  SUBSPECIES
## 9  SUBSPECIES
## 10 SUBSPECIES
## 11 SUBSPECIES
## 12 SUBSPECIES
## 13 SUBSPECIES
## 14 SUBSPECIES
## 15 SUBSPECIES
## 16 SUBSPECIES
## 17 SUBSPECIES
## 18 SUBSPECIES
## 19 SUBSPECIES
## 20 SUBSPECIES
```



```r
name_backbone(name = "Puma concolor")
```

```
## $usageKey
## [1] 2435099
## 
## $scientificName
## [1] "Puma concolor (Linnaeus, 1771)"
## 
## $canonicalName
## [1] "Puma concolor"
## 
## $rank
## [1] "SPECIES"
## 
## $synonym
## [1] FALSE
## 
## $confidence
## [1] 100
## 
## $matchType
## [1] "EXACT"
## 
## $kingdom
## [1] "Animalia"
## 
## $phylum
## [1] "Chordata"
## 
## $clazz
## [1] "Mammalia"
## 
## $order
## [1] "Carnivora"
## 
## $family
## [1] "Felidae"
## 
## $genus
## [1] "Puma"
## 
## $species
## [1] "Puma concolor"
## 
## $kingdomKey
## [1] 1
## 
## $phylumKey
## [1] 44
## 
## $classKey
## [1] 359
## 
## $orderKey
## [1] 732
## 
## $familyKey
## [1] 9703
## 
## $genusKey
## [1] 2435098
## 
## $speciesKey
## [1] 2435099
```



```r
key <- name_backbone(name = "Puma concolor")
name_usage(key = key$usageKey)
```

```
## $key
## [1] 2435099
## 
## $kingdom
## [1] "Animalia"
## 
## $phylum
## [1] "Chordata"
## 
## $clazz
## [1] "Mammalia"
## 
## $order
## [1] "Carnivora"
## 
## $family
## [1] "Felidae"
## 
## $genus
## [1] "Puma"
## 
## $species
## [1] "Puma concolor"
## 
## $kingdomKey
## [1] 1
## 
## $phylumKey
## [1] 44
## 
## $classKey
## [1] 359
## 
## $orderKey
## [1] 732
## 
## $familyKey
## [1] 9703
## 
## $genusKey
## [1] 2435098
## 
## $speciesKey
## [1] 2435099
## 
## $datasetKey
## [1] "d7dddbf4-2cf0-4f39-9b2a-bb099caae36c"
## 
## $nubKey
## [1] 2435099
## 
## $parentKey
## [1] 2435098
## 
## $parent
## [1] "Puma"
## 
## $scientificName
## [1] "Puma concolor (Linnaeus, 1771)"
## 
## $canonicalName
## [1] "Puma concolor"
## 
## $authorship
## [1] " (Linnaeus, 1771)"
## 
## $nameType
## [1] "WELLFORMED"
## 
## $rank
## [1] "SPECIES"
## 
## $origin
## [1] "SOURCE"
## 
## $taxonomicStatus
## [1] "ACCEPTED"
## 
## $nomenclaturalStatus
## list()
## 
## $publishedIn
## [1] "Mantissa Plantarum vol. 2 p. 266"
## 
## $accordingTo
## [1] "The Catalogue of Life, 3rd January 2011"
## 
## $numDescendants
## [1] 6
## 
## $identifiers
## $identifiers[[1]]
## $identifiers[[1]]$key
## [1] 1155098
## 
## $identifiers[[1]]$usageKey
## [1] 2435099
## 
## $identifiers[[1]]$datasetKey
## [1] "d7dddbf4-2cf0-4f39-9b2a-bb099caae36c"
## 
## $identifiers[[1]]$identifier
## [1] "119806678"
## 
## $identifiers[[1]]$type
## [1] "SOURCE_ID"
## 
## 
## 
## $synonym
## [1] FALSE
## 
## $sourceId
## [1] "119806678"
```


### Occurrences

* `occ_count`
* `occ_get`
* `occ_metadata`
* `occ_search`


```r
occ_count(georeferenced = TRUE)
```

```
## [1] 3.71e+08
```

```r
occ_count(country = "CANADA")
```

```
## [1] 12632718
```

```r
occ_count(country = "CANADA", georeferenced = TRUE)
```

```
## [1] 11160213
```

```r
occ_count(type = "year", from = 2000, to = 2012)
```

```
## $`2000`
## [1] 8737073
## 
## $`2001`
## [1] 8498621
## 
## $`2002`
## [1] 8992260
## 
## $`2003`
## [1] 9554510
## 
## $`2004`
## [1] 10402219
## 
## $`2005`
## [1] 11241960
## 
## $`2006`
## [1] 12866270
## 
## $`2007`
## [1] 16770917
## 
## $`2008`
## [1] 16967661
## 
## $`2009`
## [1] 21092810
## 
## $`2010`
## [1] 23175376
## 
## $`2011`
## [1] 26523277
```



```r
key <- name_backbone(name = "Helianthus annuus", kingdom = "plants")$speciesKey
occ_search(taxonKey = key, limit = 2)
```

```
## $meta
## $meta$offset
## [1] 0
## 
## $meta$limit
## [1] 2
## 
## $meta$endOfRecords
## [1] FALSE
## 
## $meta$count
## [1] 18898
## 
## 
## $hierarchy
## $hierarchy[[1]]
##                name     key    rank
## 1           Plantae       6 kingdom
## 2     Magnoliophyta      49  phylum
## 3     Magnoliopsida     220   clazz
## 4         Asterales     414   order
## 5        Asteraceae    3065  family
## 6        Helianthus 3119134   genus
## 7 Helianthus annuus 3119195 species
## 
## 
## $data
##                name       key longitude latitude
## 1 Helianthus annuus 855868468     16.42    56.58
## 2 Helianthus annuus 773433533   -117.00    32.85
```

```r
occ_search(taxonKey = c(2482598, 2492010))
```

```
## $`2482598`
## $`2482598`$meta
## $`2482598`$meta$offset
## [1] 0
## 
## $`2482598`$meta$limit
## [1] 20
## 
## $`2482598`$meta$endOfRecords
## [1] FALSE
## 
## $`2482598`$meta$count
## [1] 256242
## 
## 
## $`2482598`$hierarchy
## $`2482598`$hierarchy[[1]]
##                  name     key    rank
## 1            Animalia       1 kingdom
## 2            Chordata      44  phylum
## 3                Aves     212   clazz
## 4       Passeriformes     729   order
## 5            Corvidae    5235  family
## 6          Cyanocitta 2482592   genus
## 7 Cyanocitta stelleri 2482598 species
## 
## 
## $`2482598`$data
##                   name       key longitude latitude
## 1  Cyanocitta stelleri 866607320    -122.5    37.74
## 2  Cyanocitta stelleri 773422233    -121.2    36.50
## 3  Cyanocitta stelleri 773434180    -116.6    32.91
## 4  Cyanocitta stelleri 773429514    -116.5    32.82
## 5  Cyanocitta stelleri 866505770    -122.4    37.62
## 6  Cyanocitta stelleri 859267555    -109.0    36.26
## 7  Cyanocitta stelleri 773441671    -122.3    47.66
## 8  Cyanocitta stelleri 866496725    -121.2    36.48
## 9  Cyanocitta stelleri 866497845    -122.3    47.49
## 10 Cyanocitta stelleri 866498508    -121.8    36.25
## 11 Cyanocitta stelleri 773445330    -121.0    39.21
## 12 Cyanocitta stelleri 773447454    -122.6    37.90
## 13 Cyanocitta stelleri 773450383    -116.6    33.08
## 14 Cyanocitta stelleri 773450536    -116.6    32.96
## 15 Cyanocitta stelleri 773448614    -122.1    36.99
## 16 Cyanocitta stelleri 866498613    -122.7    38.46
## 17 Cyanocitta stelleri 866500981    -122.1    37.09
## 18 Cyanocitta stelleri 866502187    -122.5    37.77
## 19 Cyanocitta stelleri 866503837    -120.0    38.89
## 20 Cyanocitta stelleri 866507372    -123.8    48.06
## 
## 
## $`2492010`
## $`2492010`$meta
## $`2492010`$meta$offset
## [1] 0
## 
## $`2492010`$meta$limit
## [1] 20
## 
## $`2492010`$meta$endOfRecords
## [1] FALSE
## 
## $`2492010`$meta$count
## [1] 1433444
## 
## 
## $`2492010`$hierarchy
## $`2492010`$hierarchy[[1]]
##             name     key    rank
## 1       Animalia       1 kingdom
## 2       Chordata      44  phylum
## 3           Aves     212   clazz
## 4  Passeriformes     729   order
## 5    Emberizidae    9608  family
## 6          Junco 2492009   genus
## 7 Junco hyemalis 2492010 species
## 
## 
## $`2492010`$data
##              name       key longitude latitude
## 1  Junco hyemalis 866605104    -93.92    32.84
## 2  Junco hyemalis 866605139    -72.59    44.27
## 3  Junco hyemalis 866605276    -81.49    41.15
## 4  Junco hyemalis 866605465   -120.10    39.35
## 5  Junco hyemalis 866605789    -93.94    33.70
## 6  Junco hyemalis 866605994    -76.40    38.98
## 7  Junco hyemalis 866606265    -73.06    44.25
## 8  Junco hyemalis 866605220    -72.65    44.27
## 9  Junco hyemalis 866606721    -93.33    35.51
## 10 Junco hyemalis 866607293    -73.07    44.44
## 11 Junco hyemalis 866606425   -111.82    40.77
## 12 Junco hyemalis        NA        NA       NA
## 13 Junco hyemalis        NA        NA       NA
## 14 Junco hyemalis        NA        NA       NA
## 15 Junco hyemalis 730314092    -78.42    38.16
## 16 Junco hyemalis 773408730   -116.85    32.89
## 17 Junco hyemalis 866494367    -73.11    44.57
## 18 Junco hyemalis 773413134   -122.06    36.95
## 19 Junco hyemalis 773414585    -97.28    32.89
## 20 Junco hyemalis 773414927   -111.82    40.77
```



```r
dat <- occ_search(taxonKey = key, limit = 2, minimal = FALSE)
occ_get(key = dat$data$key[1], minimal = FALSE)
```

```
## $hierarch
##                name     key    rank
## 1           Plantae       6 kingdom
## 2     Magnoliophyta      49  phylum
## 3     Magnoliopsida     220   clazz
## 4         Asterales     414   order
## 5        Asteraceae    3065  family
## 6        Helianthus 3119134   genus
## 7 Helianthus annuus 3119195 species
## 
## $data
##                name       key kingdom        phylum         clazz
## 1 Helianthus annuus 855868468 Plantae Magnoliophyta Magnoliopsida
##       order     family      genus           species kingdomKey phylumKey
## 1 Asterales Asteraceae Helianthus Helianthus annuus          6        49
##   classKey orderKey familyKey genusKey speciesKey institutionCode
## 1      220      414      3065  3119134    3119195   ArtDatabanken
##   collectionCode catalogNumber                           datasetKey
## 1        Artport       4373120 38b4c89f-584c-41bb-bd8f-cd1def33e92f
##                           owningOrgKey       scientificName  nubKey
## 1 b8323864-602a-4a7d-9127-bb903054e97d Helianthus annuus L. 3119195
##   basisOfRecord longitude latitude    locality county stateProvince
## 1   OBSERVATION     16.42    56.58 Stora Frö N  Öland        Kalmar
##   country                                            identifierName
## 1      SE Jan-Olof Petersson, Crister Albinsson, Jan-Olof Petersson
##   occurrenceYear occurrenceMonth               occurrenceDate altitude
## 1           2013               2 2013-02-03T23:00:00.000+0000       -1
##   taxonomicIssue geospatialIssue otherIssue                     modified
## 1              0               0          8 2013-12-16T03:56:18.854+0000
##      protocol hostCountry identifiers images typeDesignations
## 1 DWC_ARCHIVE          SE        none   none             none
```


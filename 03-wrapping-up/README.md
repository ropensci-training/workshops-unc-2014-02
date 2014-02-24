# Survey.

Our workshops are always evolving, and we'd love your feedback.
[http://ropensci.org/unc-02-2014](http://ropensci.org/unc-02-2014)

# Rstudio server

The RStudio you used for the workshop today is available as a public Amazon Machine Image (AMI). The machine ID is:

```coffee
ami-25787c4c
```

This means that you can use your own [personal Amazon account](https://console.aws.amazon.com/console/home) to launch an instance of this machine image at your convenience. We'll keep all the stable versions of rOpenSci packages and tools updated at all times. 

You will most likely just want to work locally on your copy of RStudio. In that case, you'll need the latest version of R (currently `3.0.2`) and [RStudio](http://www.rstudio.com/) for your platform. Then install the following packages:

From CRAN:

```coffee
install.packages("ggplot2", dependencies = TRUE)
install.packages(c('abind','ape','assertthat','bigrquery','bit','chron','data','data.table','digest','doMC',
	'ecoengine','extfuns','fastmatch','foreach','ggmap','ggplot','ggplot2','grid','gridExtra','gtable',
	'hexbin','hflights','Hmisc','httr','iterators','itertools','knitr','Lahman','lattice','leafletR',
	'lubridate','mapproj','maps','maptools','MASS','methods','mgcv','microbenchmark','multcomp','nlme',
	'phytools','plyr','proto','quantreg','rbison','RColorBrewer','Rcpp','RCurl','rebird','reshape',
	'reshape2','rgbif','rgdal','rgeos','rinat','rjson','RJSONIO','RMySQL','roxygen2','RPostgreSQL',
	'RSQLite','scales','shiny','sp','stats','stringr','table','Taxonstand','tcltk','testthat','utils',
	'vegan','whisker','XML','xts','yml','taxize'))
```

Then install some packages from GitHub. First install the devtools package since it will allow you to install packages directly from GitHub that haven't yet been submitted to CRAN.

```coffee
install.packages("devtools")
library(devtools)
```

Then install some packages:

```coffee
install_github(c("ropensci/spocc","ropensci/rnoaa","ropensci/rwbclimate"))
```

I may have missed a few dependencies. If so, apologies in advance.
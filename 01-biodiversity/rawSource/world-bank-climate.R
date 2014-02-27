

library(rWBclimate)



gbr.dat.t <- get_ensemble_temp("GBR", "annualavg", 1900,2100)
gbr.dat.t <- subset(gbr.dat.t,gbr.dat.t$percentile == 50)

ggplot(gbr.dat.t,aes(x=fromYear,y=data,group=scenario, colour=scenario)) + 
  theme_bw(base_size=20) + 
  geom_point() + 
  geom_path() + 
  labs(x="Year", y="Annual Average Temperature in 20 year increments")



gbr.dat.p <- get_ensemble_precip("GBR", "annualavg", 1900,2100)
gbr.dat.p <- subset(gbr.dat.p,gbr.dat.p$percentile == 50)
ggplot(gbr.dat.p, aes(x=fromYear,y=data,group=scenario, colour=scenario)) + 
  theme_bw(base_size=20) + 
  geom_point() + 
  geom_path() + 
  labs(x="Year", y="Annual Average precipitation in mm")



country.list <- c("ISL", "FIN", "NOR", "SWE")
country.dat <- get_ensemble_stats(country.list, "mavg", "tmin_means")
####### Subset data Exclude A2 scenario
country.dat.b1 <- subset(country.dat, country.dat$scenario == "b1")
# choose just one percentile
country.dat.b1 <- subset(country.dat.b1, country.dat.b1$percentile == 50)
# get just one year period
country.dat.b1 <- subset(country.dat.b1, country.dat.b1$fromYear == 2081)


ggplot(country.dat.b1, aes(x = month, y = data, group = locator, colour = locator)) + 
    geom_point() + geom_path() + ylab("Average daily minimum temperature") + 
    theme_bw() + xlab("Month")




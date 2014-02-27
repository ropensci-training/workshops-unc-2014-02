

library(rgbif)
library(plyr)
library(doMC)



spplist <- c('Geothlypis trichas','Tiaris olivacea','Pterodroma axillaris','Calidris ferruginea','Pterodroma macroptera','Gallirallus australis','Falco cenchroides','Telespiza cantans','Oreomystis bairdi','Cistothorus palustris')



keys <- sapply(spplist, function(x) name_backbone(x, rank="species")$usageKey)
# remove NULLs
keys <- compact(keys)



countrynames <- as.character(isocodes$gbif_name)[1:25]



occ_by_countries <- function(spkey){
  occ_count_safe <- plyr::failwith(NULL, occ_count)
  tmp <- lapply(countrynames, function(x) occ_count_safe(spkey, country=x))
  names(tmp) <- countrynames
  tmp[grep("No enum", tmp)] <- NA
  tmp
}



registerDoMC(cores=4) 
out <- llply(keys, occ_by_countries, .parallel=TRUE)



## out <- lapply(keys, occ_by_countries)



names(out) <- spplist
df <- ldply(out, function(x){
  tmp <- ldply(x)
  names(tmp)[1] <- "country"
  tmp
})
df <- na.omit(df) # remove NAs (which were caused by errors in country names)



# Get only countries found in
df_foundin <- df[!df$V1==0,]



head(df_foundin); tail(df_foundin)



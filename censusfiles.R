library(dplyr)
library(readr)

# setwd("F:/Andrew/Documents/Dropbox/R Projects/Fixing Census Data files/")
# setwd("/Users/andrewbell/Dropbox (Personal)/R Projects/Fixing Census Data files/")

# Read csv files
ds.hh <- read_csv("hhpub19.csv")
ds.pp <- read_csv("pppub19.csv")

# Get rid of cols we don't need from home file, rename to id_match
ds.hh <- ds.hh %>%
  dplyr::select(H_IDNUM, GESTFIPS) %>%
  rename(id_match = H_IDNUM)

# Get substring of person ID num
ds.pp <- ds.pp %>%
  mutate(
    id_match = substr(PERIDNUM, 1, 20)
  )

ds.combined <- merge(ds.hh, ds.pp, by = "id_match")

ds.combined <- ds.combined %>%
  filter(GESTFIPS == 40)

write_csv(ds.combined, file = "2019 CPS Person File - Oklahoma Residents Only.csv")

library(readr)
library(dplyr, warn.conflicts = FALSE)
library(ggplot2)

R.utils::sourceDirectory(here::here("R"))

# Read data
raw_mycars <- read_cars_data(here::here("data-raw", "mycars.csv"))
mycars <- munge_cars_data(raw_mycars)

# Does the horse powers have an impact on gas mileage?
plot_hp_mpg(mycars)

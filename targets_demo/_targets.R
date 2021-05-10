library(targets)
library(readr)
library(dplyr, warn.conflicts = FALSE)
library(ggplot2)

R.utils::sourceDirectory(here::here("R"))

list(
    tarchetypes::tar_force(
        name = cars_file,
        fs::path("data-raw", "mycars.csv"),
        force = TRUE,
        format = "file"
    ),
    tar_target(
        name = raw_mycars,
        read_cars_data(cars_file)
    ),
    tar_target(
        name = mycars,
        munge_cars_data(raw_mycars)
    ),
    # Plots
    tar_target(
        name = hp_mpg_plot,
        plot_hp_mpg(mycars)
    ),
    # Report
    tarchetypes::tar_render(report, "doc/analysis.Rmd")
)

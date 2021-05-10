library(magrittr)

mtcars %>%
    tibble::rownames_to_column(var = "car") %>%
    dplyr::slice_sample(prop = 0.8) %>%
    readr::write_delim(file = here::here("data-raw", "mycars.csv"), delim = ";")

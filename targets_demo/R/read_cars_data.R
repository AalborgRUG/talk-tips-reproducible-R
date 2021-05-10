read_cars_data <- function(filename) {
    read_delim(
        filename,
        delim = ";",
        col_types = cols(
            car = col_character(),
            mpg = col_double(),
            cyl = col_double(),
            disp = col_double(),
            hp = col_double(),
            drat = col_double(),
            wt = col_double(),
            qsec = col_double(),
            vs = col_double(),
            am = col_double(),
            gear = col_double(),
            carb = col_double()
        )
    )
}

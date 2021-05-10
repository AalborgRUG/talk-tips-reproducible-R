munge_cars_data <- function(raw_mycars) {
    raw_mycars %>%
        mutate(cyl = as.factor(cyl))
}

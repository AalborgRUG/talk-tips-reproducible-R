plot_hp_mpg <- function(mycars) {
    mycars %>%
        ggplot(aes(hp, mpg, color = cyl)) +
        geom_point()
}

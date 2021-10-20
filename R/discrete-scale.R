# This is where your discrete ggplot palettes would go

scale_colour_YlGrBl_d <- function(direction = 1, ...) {
  ggplot2::discrete_scale("colour", "YlGrBl", YlGrBl_pal(direction),
    ...
  )
}


scale_fill_YlGrBl_d <- function(direction = 1, ...) {
  ggplot2::discrete_scale("fill", "YlGrBl", YlGrBl_pal(direction),
    ...
  )
}

ggplot(sleep, aes(x = ID, y = extra, fill = group))+
  geom_col(position = "dodge")+
  scale_fill_YlGrBl_d()

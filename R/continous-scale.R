# This is where functions for your continous scale go

scale_colour_YlGrBl_seq_c <- function(name, direction = 1, amount = 1, ...) {

  stopifnot(name %in% YlGrBl_colours)

  low <-  unname(name)

  high <-  colorspace::lighten(name, amount = amount)

   if (direction < 0){
    low <-  colorspace::lighten(name, amount)
    high <- name
   }

   #pass everything on to ggplot2 color gradient
   ggplot2::scale_color_gradient(high = high, low =low)

}

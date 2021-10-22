# This is where functions for your continous scale go

#' YlGrBl continuous scales color from YlGrBlPal
#'
#' @param name Name of the 5 colors including yellow, green, turquoise, blue, indigo.
#' @param direction Reverse the luminance of the color at top of scale
#' @param amount To define the amount of luminance
#'
#' @export
#'
#' @examples
#' {library('ggplot2')
#' ggplot(data = palmerpenguins::penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
#' geom_point(aes(color = body_mass_g))+
#' scale_colour_YlGrBl_seq_c(name = 'blue', direction = 1, amount = 1)}
scale_colour_YlGrBl_seq_c <- function(name, direction = 1, amount = 1) {

  colors <- unname(YlGrBl_colours)

  stopifnot(name %in% unlist(names(YlGrBl_colours)))

  low <-  name

  high <-  colorspace::lighten(name, amount = amount)

   if (direction < 0){
    low <-  colorspace::lighten(name, amount)
    high <- name
   }

   #pass everything on to ggplot2 color gradient
   ggplot2::scale_color_gradient(high = high, low =low)

}

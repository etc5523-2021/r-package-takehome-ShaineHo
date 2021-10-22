# This is where your discrete ggplot palettes would go

#' YlGrBl discrete scales color from YlGrBlPal
#'
#' @param direction To change the direction of the return when direction < 1
#'
#'
#' @export
#'
#' @examples
#' {library('ggplot2')
#' ggplot(data = palmerpenguins::penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
#' geom_point(aes(color = species))+
#' scale_colour_YlGrBl_d()}
scale_colour_YlGrBl_d <- function(direction = 1) {
  ggplot2::discrete_scale("colour", "YlGrBl", YlGrBl_pal(direction)
  )
}


#' YlGrBl discrete scales fill from YlGrBlPal
#'
#' @param direction To change the direction of the return when direction < 1
#'
#'
#' @export
#'
#' @examples
#'{library('ggplot2')
#'ggplot(data = palmerpenguins::penguins, aes(x = flipper_length_mm,fill = species))+
#'geom_bar(position = "dodge")+
#'scale_fill_YlGrBl_d()}
scale_fill_YlGrBl_d <- function(direction = 1) {
  ggplot2::discrete_scale("fill", "YlGrBl", YlGrBl_pal(direction)
  )
}





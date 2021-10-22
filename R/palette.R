# Define colour palette variables and functions here

YlGrBl_colours <- list(
  # add your colours as a named list here, i.e.
  "indigo" = "#000074",
  "blue" = "#0086ff",
  "turquoise" = "#09dea6",
  "green" = "#94ff3c",
  "yellow" = "#f2ff00"
)


#' YlGrBl color scales from YlGrBlPal
#'
#' @param direction To change the direction of the return when direction < 1
#'
#' @description
#' `YlGrBl_pal()` returns a set of color string quotes from from YlGrBl Colors.
#'
#' @return
#' \itemize{
#'   \item yellow - #f2ff00
#'   \item green - #94ff3c
#'   \item turquoise - #09dea6
#'   \item blue - #0086ff
#'   \item indigo - #000074"
#'   }
#'
#' @export
#'
#' @examples
#' {library('ggplot2')
#' ggplot(data = palmerpenguins::penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
#' geom_point(color = YlGrBl_pal()(1))}


YlGrBl_pal <- function(direction = 1) {

  function(n) {

    if (n > 5)
      warning("The YlGrBl Palette on has 5 colors!")
    else{
      YlGrBl_colours <- YlGrBl_colours[1:n]
    }

  YlGrBl_colours <- unname(unlist(YlGrBl_colours))
  if (direction < 1)
    rev(YlGrBl_colours)
  else
    YlGrBl_colours

  }
}


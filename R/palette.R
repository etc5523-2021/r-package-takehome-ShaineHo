# Define colour palette variables and functions here
"yellow" = "#f2ff00"
"green" = "#94ff3c"
"turquoise" = "#09dea6"
"blue" = "#0086ff"
"indigo" = "#000074"

YlGrBl_colours <- list(
  # add your colours as a named list here, i.e.
  "yellow" = "#f2ff00",
  "green" = "#94ff3c",
  "turquoise" = "#09dea6",
  "blue" = "#0086ff",
  "indigo" = "#000074"
)


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


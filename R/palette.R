# Define colour palette variables and functions here
"yellow" = "#f2ff00"
"green" = "#94ff3c"
"turquoise" = "#09dea6"
"blue" = "##065cc3"
"indigo" = "#04048d"

YlGrBl_colours <- list(
  # add your colours as a named list here, i.e.
  indigo, blue, turquoise, green , yellow
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
    YlGrBl_colours
  else
    rev(YlGrBl_colours)
  }
}


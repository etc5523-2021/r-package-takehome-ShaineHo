% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/palette.R
\name{YlGrBl_pal}
\alias{YlGrBl_pal}
\title{YlGrBl color scales from YlGrBlPal}
\usage{
YlGrBl_pal(direction = 1)
}
\arguments{
\item{direction}{To change the direction of the return when direction < 1}
}
\value{
\itemize{
\item yellow - #f2ff00
\item green - #94ff3c
\item turquoise - #09dea6
\item blue - #0086ff
\item indigo - #000074"
}
}
\description{
\code{YlGrBl_pal()} returns a set of color string quotes from from YlGrBl Colors.
}
\examples{
{library('ggplot2')
ggplot(data = palmerpenguins::penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
geom_point(color = YlGrBl_pal()(1))}
}

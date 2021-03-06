
<!-- README.md is generated from README.Rmd. Please edit that file -->

# YlGrBlPal

<!-- badges: start -->

<!-- badges: end -->

YlGrBlPal provides a set of colors including Yellow, Green, Turquoise,
Indigo and Blue that can be applied to ggplot2 plot. It can be used in
discrete-scale color and fill or continuous-scale color.

## Installation

It can be installed through the development version from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("etc5523-2021/r-package-takehome-ShaineHo")
```

## Examples

There are some basic examples which show you how to solve common
problems. The packages required for the examples are as follow. The data
of the example is from `palmerpenguins` package.

``` r
library(YlGrBlPal)
library(ggplot2)
library(palmerpenguins)
```

### Example for YlGrBl palette

``` r
 ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
 geom_point(color = YlGrBl_pal()(1))+
   theme_bw()+
   labs(x = "Flipper length (mm)",
        y = "Body Mass (gram)",
        title = "Relationship between body mass and flipper length of the penguins")
#> Warning: Removed 2 rows containing missing values (geom_point).
```

<img src="man/figures/README-ylgrbl-pal-1.png" width="100%" />

### Example for discrete-scale

``` r
ggplot(data = penguins, aes(x = flipper_length_mm, y = body_mass_g)) +
geom_point(aes(color = species))+
scale_colour_YlGrBl_d()+
  theme_bw()+
  labs(x = "Flipper length (mm)",
        y = "Body Mass (gram)",
        title = "Relationship between body mass and flipper length of the penguins by species")
#> Warning: Removed 2 rows containing missing values (geom_point).
```

<img src="man/figures/README-scale-color-discrete-1.png" width="100%" />

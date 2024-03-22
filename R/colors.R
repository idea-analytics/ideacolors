#' IDEA Public Schools Colors (2019)
#'
#' Named list of colors from the [IDEA Brand Guidelines (2019)](https://brandfolder.com/ideapublicschools)
#' (you'll need to behind the firewall to see that guide).
#'
#' The list of available colors is: darkblue, blue, cyan, lime, magenta, melon,
#' yellow, coolgray, gray, lightgray, darkgray, red
#'
#' @export
idea_colors <- list(
  darkblue = "#1a4784",#blues
  blue = "#0079c1",
  cyan = "#53b4cc",

  lime = "#a4c364", #green

  magenta = "#ee3a80", #warms
  melon = "#f9a054",

  yellow = "#ffde75", #yellow

  coolgray = "#626363",  #grays
  gray = "gray",
  lightgray = "lightgray",

  red = "firebrick" #red extra


)

#' @rdname idea_colors
#' @export
idea_colors_2019 <- idea_colors

#' IDEA Public Schools Colors (2024)
#'
#' Named list of colors from the [IDEA Brand Guidelines (2024)](https://brandfolder.com/ideapublicschools)
#' (you'll need to behind the firewall to see that guide).
#'
#' The list of available colors is: blue, yellow, darkblue, lime, cyan, melon,
#' vermillion, coolgray, gray, lightgray.
#'
#' @export
idea_colors_2024 <- list(

  # primary brand colors
  blue = "#0078BF",
  yellow = "#FFCF01",
  darkblue = "#002F6C",

  # secondary brand colors
  lime = "#A7BD39",
  cyan = "#27BFC9",
  melon = "#F6851F",

  # accent color
  vermillion = "#D22630",

  # additional grey selection
  coolgray = "#626363",
  gray = "gray",
  lightgray = "lightgray"

)

#' IDEA Color Palettes (2019)
#'
#' A collection of color palettes based on the [IDEA Brand Guidelines (2019)](https://brandfolder.com/ideapublicschools)
#' (you'll need to behind the firewall to see that guide).
#'
#' The list of available palettes is:
#' * qual
#' * div
#' * blueorange
#' * greenorange
#' * bluegray
#' * greengray
#' * orangegray
#'
#' @examples
#'
#' # Make an x-y plot using the div palette
#' library(tidyverse)
#' df <- data.frame(x = rnorm(100, 0, 20),
#'           y = rnorm(100, 0, 20),
#'           cl = sample(letters[1:8], 100, replace=TRUE))
#' ggplot(df, aes(x, y, colour=cl, shape=cl)) +
#'   geom_point(size=4) +
#'   scale_colour_idea() +
#'   theme_bw() +
#'   theme(aspect.ratio=1)
#'
#' # Make a histogram using the qual palette
#' ggplot(df, aes(x, fill=cl)) + geom_histogram() +
#'   scale_fill_idea(palette="qual")
#'
#' @export
idea_palettes <- list(
  qual = c(idea_colors$darkblue,
           idea_colors$magenta,
           idea_colors$lime,
           idea_colors$blue,
           idea_colors$yellow,
           idea_colors$cyan,
           idea_colors$coolgray,
           idea_colors$melon

  ),

  div = c(idea_colors$darkblue, #cool
          idea_colors$blue,
          idea_colors$cyan,

          idea_colors$lime, #green

          idea_colors$yellow,
          idea_colors$melon,
          idea_colors$magenta#,
          # idea_colors$red
  ),

  blueorange = c(idea_colors$darkblue,
                 idea_colors$blue,
                 idea_colors$cyan,

                 idea_colors$yellow,
                 idea_colors$melon
  ),


  greenorange = c(idea_colors$lime,

                  idea_colors$yellow,
                  idea_colors$melon
  ),

  bluegray = c(idea_colors$darkblue,
               idea_colors$blue,
               idea_colors$cyan,
               idea_colors$lightgray,
               idea_colors$gray,
               idea_colors$coolgray
  ),
  greengray = c(idea_colors$lime,
                idea_colors$lightgray,
                idea_colors$gray,
                idea_colors$coolgray
  ),

  orangegray = c(idea_colors$melon,
                 idea_colors$lightgray,
                 idea_colors$gray,
                 idea_colors$coolgray
  )

)

#' @rdname idea_palettes
#' @export
idea_palettes_2019 <- idea_palettes


#' IDEA Color Palettes (2024)
#'
#' A collection of color palettes based on the [IDEA Brand Guidelines (2024)](https://brandfolder.com/ideapublicschools)
#' (you'll need to behind the firewall to see that guide).
#'
#' The list of available palettes is:
#' * qual
#' * div
#' * blueorange
#' * greenorange
#' * bluegray
#' * greengray
#' * orangegray
#'
#' @examples
#'
#' # Make an x-y plot using the div palette
#' library(tidyverse)
#' df <- data.frame(x = rnorm(100, 0, 20),
#'           y = rnorm(100, 0, 20),
#'           cl = sample(letters[1:8], 100, replace=TRUE))
#' ggplot(df, aes(x, y, colour=cl, shape=cl)) +
#'   geom_point(size=4) +
#'   scale_colour_idea() +
#'   theme_bw() +
#'   theme(aspect.ratio=1)
#'
#' # Make a histogram using the qual palette
#' ggplot(df, aes(x, fill=cl)) + geom_histogram() +
#'   scale_fill_idea(palette="qual")
#'
#' @export
idea_palettes_2024 <- list(
  qual = c(idea_colors_2024$darkblue,
           idea_colors_2024$lime,
           idea_colors_2024$blue,
           idea_colors_2024$yellow,
           idea_colors_2024$cyan,
           idea_colors_2024$vermillion,
           idea_colors_2024$coolgray,
           idea_colors_2024$melon

  ),

  div = c(idea_colors_2024$darkblue, #cool
          idea_colors_2024$blue,
          idea_colors_2024$cyan,

          idea_colors_2024$lime, #green

          idea_colors_2024$yellow,
          idea_colors_2024$melon,
          idea_colors_2024$vermillion
  ),

  blueorange = c(idea_colors_2024$darkblue,
                 idea_colors_2024$blue,
                 idea_colors_2024$cyan,

                 idea_colors_2024$yellow,
                 idea_colors_2024$melon
  ),


  greenorange = c(idea_colors_2024$lime,

                  idea_colors_2024$yellow,
                  idea_colors_2024$melon
  ),

  bluegray = c(idea_colors_2024$darkblue,
               idea_colors_2024$blue,
               idea_colors_2024$cyan,
               idea_colors_2024$lightgray,
               idea_colors_2024$gray,
               idea_colors_2024$coolgray
  ),
  greengray = c(idea_colors_2024$lime,
                idea_colors_2024$lightgray,
                idea_colors_2024$gray,
                idea_colors_2024$coolgray
  ),

  orangegray = c(idea_colors_2024$melon,
                 idea_colors_2024$lightgray,
                 idea_colors_2024$gray,
                 idea_colors_2024$coolgray
  )

)


#' IDEA palettes with ramped colors
#'
#' @param palette Choose from `idea_palettes` list
#' @param alpha transparency from 0 (completely transparent) to 1 (completely opaque)
#' @param reverse If `TRUE``, the direction of the color ramp is reversed.
#' @param year Defaults to the most recent branding guidelines (year = 2024), but year = 2019 also available
#'
#' @return a function that takes the number of colors needed as an argument
#' @export
#'
#' @examples
#' library(scales)
#'
#' # Defaults to the most recent branding guidelines (2024)
#' show_col(idea_palette_ramp()(10))
#'
#' # Use the 2019 branding guidelines instead
#' show_col(idea_palette_ramp(year = 2019)(10))
#'
#' filled.contour(volcano,color.palette = idea_palette_ramp(), asp=1)
#'

idea_palette_ramp <- function(palette="div", alpha = 1, reverse = FALSE, year = 2024) {
  pal <- if (year == 2024) {
      idea_palettes_2024[[palette]]
    } else if (year == 2019) {
      idea_palettes_2019[[palette]]
    } else {
      stop("'year' argument must be either 2024 (default) or 2019")
    }
  if (reverse){
    pal <- rev(pal)
  }

  #return
  grDevices::colorRampPalette(pal, alpha)
}


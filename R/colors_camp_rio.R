#' Camp RIO Colors
#'
#' Named list of colors from the [Camp RIO Brand Guidelines](https://ideapublicschoolsorg.sharepoint.com/:b:/s/ResearchandAnalysis/ETpoVdcAUQZCkXhI83eV6U0BHT2vFOcXUqAas326qEneXw?e=am5aeE)
#' (you'll need to behind the firewall to see that guide).
#'
#' The list of available colors is: forestgreen, pond, sunriseyellow,
#' incarnadine, sunsetorange, midnight, riverblue, goldenhourbeige

#' @export
camp_rio_colors <- list(

  forestgreen = "#0b582b",

  pond = "#4cc0af",
  sunriseyellow = "#ffd346",

  incarnadine = "#8c191c",
  sunsetorange = "#f68b1f",
  midnight = "#2b2926",

  riverblue = "#0979bf",
  goldenhourbeige = "#f3ede2"

)

#' Camp RIO Color Palettes
#'
#' A collection of color palettes based on the [Camp RIO Brand Guidelines](https://ideapublicschoolsorg.sharepoint.com/:b:/s/ResearchandAnalysis/ETpoVdcAUQZCkXhI83eV6U0BHT2vFOcXUqAas326qEneXw?e=am5aeE)
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
#'   scale_colour_camp_rio() +
#'   theme_bw() +
#'   theme(aspect.ratio=1)
#'
#' # Make a histogram using the qual palette
#' ggplot(df, aes(x, fill=cl)) + geom_histogram() +
#'   scale_fill_camp_rio(palette="qual")

#' @export
camp_rio_palettes <- list(

  # qualitative palette
  qual = c(camp_rio_colors$forestgreen,
           camp_rio_colors$pond,
           camp_rio_colors$sunriseyellow,
           camp_rio_colors$incarnadine,
           camp_rio_colors$riverblue,
           camp_rio_colors$midnight,
           camp_rio_colors$sunsetorange),

  # diverging palette
  div = c(# cool
          camp_rio_colors$riverblue,
          camp_rio_colors$pond,

          # green
          camp_rio_colors$forestgreen,

          # warms
          camp_rio_colors$sunriseyellow,
          camp_rio_colors$sunsetorange,
          camp_rio_colors$incarnadine),

  blueorange = c(camp_rio_colors$riverblue,
                 camp_rio_colors$pond,
                 camp_rio_colors$sunriseyellow,
                 camp_rio_colors$sunsetorange),

  greenorange = c(camp_rio_colors$forestgreen,
                  camp_rio_colors$sunriseyellow,
                  camp_rio_colors$sunsetorange),

  bluegray = c(camp_rio_colors$riverblue,
               camp_rio_colors$pond,
               idea_colors$lightgray,
               idea_colors$gray),

  greengray = c(camp_rio_colors$forestgreen,
                camp_rio_colors$pond,
                idea_colors$gray,
                idea_colors$coolgray),

  orangegray = c(camp_rio_colors$sunsetorange,
                 camp_rio_colors$sunriseyellow,
                 idea_colors$gray,
                 idea_colors$coolgray),

  # official gradient
  yelloworange = c(camp_rio_colors$sunriseyellow,
                   camp_rio_colors$sunsetorange)

)


#' Camp RIO palettes with ramped colors
#'
#' @param palette Choose from `camp_rio_palettes` list
#' @param alpha transparency from 0 (completely transparent) to 1 (completely opaque)
#' @param reverse If `TRUE``, the direction of the color ramp is reversed.
#'
#' @return a function that takes the number of colors needed as an argument
#' @export
#'
#' @examples
#' library(scales)
#' show_col(camp_rio_palette_ramp()(10))
#'
#' filled.contour(volcano,color.palette = camp_rio_palette_ramp(), asp=1)
#'

camp_rio_palette_ramp <- function(palette="div", alpha = 1, reverse = FALSE) {
  pal <- camp_rio_palettes[[palette]]
  if (reverse){
    pal <- rev(pal)
  }

  #return
  grDevices::colorRampPalette(pal, alpha)
}


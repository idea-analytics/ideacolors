#' Camp Rio Colors
#'
#' Named list of colors from the [Camp Rio Brand Guidelines](https://ideapublicschoolsorg.sharepoint.com/sites/ResearchandAnalysis/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FResearchandAnalysis%2FShared%20Documents%2FCamp%20Rio%2FCamp%20RIO%5FBranding%20Guidelines%5F2022%20%282%29%20%281%29%2Epdf&parent=%2Fsites%2FResearchandAnalysis%2FShared%20Documents%2FCamp%20Rio&p=true&ct=1702503731102&or=Teams%2DHL&ga=1)
#' (you'll need to behind the firewall to see that guide).
#'
#'The list of available colors is: darkblue, blue, cyan, lime, magenta, melon,
#'yellow, coolgray, gray, lightgray, darkgray, red

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

#' Camp Rio Color Palettes
#'
#'A collection of color palettes based on the [IDEA Brand Guidelines](whttps://ideapublicschoolsorg.sharepoint.com/sites/MCE/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FMCE%2FShared%20Documents%2FCreative%20Resources%2C%20Logos%2C%20and%20Mascots%2FBrand%20Guidelines%2Fbranding%5Fbrand%5Fguidelines%5F10x10%5F2019%2Epdf&parent=%2Fsites%2FMCE%2FShared%20Documents%2FCreative%20Resources%2C%20Logos%2C%20and%20Mascots%2FBrand%20Guidelines)
#' (you'll need to behind the firewall to see that guide).
#'
#'The list of available palettes is:
#' * qual
#' * div
#' * blueorange
#' * greenorange
#' * bluegray
#' * greengray
#' * orangegray
#'
#'@examples
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

#' @export
camp_rio_palettes <- list(
  qual = c(camp_rio_colors$forestgreen,
           camp_rio_colors$sunriseyellow,
           camp_rio_colors$incarnadine,
           camp_rio_colors$riverblue,
           camp_rio_colors$midnight,
           camp_rio_colors$sunsetorange

  ),

  div = c(#dea_colors$darkblue, #cool
          camp_rio_colors$riverblue,
          camp_rio_colors$pond,

          camp_rio_colors$forestgreen, #green

          camp_rio_colors$sunriseyellow,
          camp_rio_colors$sunsetorange,
          camp_rio_colors$incarnadine
          # idea_colors$red
  ),

  blueorange = c(camp_rio_colors$riverblue,
                 camp_rio_colors$pond,
                 camp_rio_colors$sunriseyellow,
                 camp_rio_colors$sunsetorange
  ),


  greenorange = c(camp_rio_colors$forestgreen,
                  camp_rio_colors$sunriseyellow,
                  camp_rio_colors$sunsetorange
  ),

  bluegray = c(camp_rio_colors$riverblue,
               camp_rio_colors$pond,
               idea_colors$lightgray,
               idea_colors$gray
  )

)

#'
#' Camp Rio palettes with ramped colors
#'
#' @param palette Choose from `idea_palettes` list
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
#'
camp_rio_palette_ramp <- function(palette="div", alpha = 1, reverse = FALSE) {
  pal <- camp_rio_palettes[[palette]]
  if (reverse){
    pal <- rev(pal)
  }

  #return
  grDevices::colorRampPalette(pal, alpha)
}


#' IDEA Public Schools Colors
#'
#' Named list of colors from the [IDEA Bradn Guidelines](whttps://ideapublicschoolsorg.sharepoint.com/sites/MCE/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FMCE%2FShared%20Documents%2FCreative%20Resources%2C%20Logos%2C%20and%20Mascots%2FBrand%20Guidelines%2Fbranding%5Fbrand%5Fguidelines%5F10x10%5F2019%2Epdf&parent=%2Fsites%2FMCE%2FShared%20Documents%2FCreative%20Resources%2C%20Logos%2C%20and%20Mascots%2FBrand%20Guidelines)
#' (you'll need to behind the firewall to see that guide).
#'
#'The list of available colors is: darkblue, blue, cyan, lime, magenta, melon,
#'yellow, coolgray, gray, lightgray, darkgray, red

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

#' IDEA Color Palettes
#'
#'A collection of color palettes based on the [IDEA Bradn Guidelines](whttps://ideapublicschoolsorg.sharepoint.com/sites/MCE/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FMCE%2FShared%20Documents%2FCreative%20Resources%2C%20Logos%2C%20and%20Mascots%2FBrand%20Guidelines%2Fbranding%5Fbrand%5Fguidelines%5F10x10%5F2019%2Epdf&parent=%2Fsites%2FMCE%2FShared%20Documents%2FCreative%20Resources%2C%20Logos%2C%20and%20Mascots%2FBrand%20Guidelines)
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


idea_palette_ramp <- function(palette="div", alpha = 1, reverse = FALSE) {
  pal <- idea_palettes[[palette]]
  if (reverse){
    pal <- rev(pal)
  }

  #return
  grDevices::colorRampPalette(pal, alpha)
}



scale_color_idea <- function(palette="div",
                             discrete = TRUE, alpha = 1, reverse = FALSE, ...) {
  if (discrete) {
    discrete_scale("colour", "idea", palette=idea_palette_ramp(palette, alpha = alpha, reverse = reverse), ...)
  } else {
    scale_color_gradientn(colours = idea_palette_ramp(palette, alpha = alpha, reverse = reverse, ...)(256))
  }
}



scale_fill_idea <- function(palette="div",
                            discrete = TRUE, alpha=1, reverse = TRUE, ...) {
  if (discrete) {
    discrete_scale("fill", "idea", palette=idea_palette_ramp(palette, alpha = alpha, reverse = reverse), ...)
  }
  else {
    scale_fill_gradientn(colours = idea_palette_ramp(palette, alpha = alpha, reverse = reverse)(256), ...)
  }
}


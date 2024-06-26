#' IDEA color scale palette for ggplot2
#'
#' @rdname scale_color_idea
#'
#' @param palette Choose from 'idea_palettes' list
#'
#' @param reverse logical, Reverse the order of the colours?
#'
#' @param alpha transparency
#'
#' @param discrete whether to use a discrete color palette
#'
#' @param year Defaults to the most recent branding guidelines (year = 2024), but year = 2019 also available
#'
#' @param ... additional arguments to passed to `scale_color_gradientn`
#'
#' @importFrom ggplot2 scale_colour_manual
#'
#' @examples
#' library(ggplot2)
#'
#' # Explicitly calls the 2024 branding guidelines
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = factor(cyl))) +
#'   scale_colour_idea(palette="qual", year = 2024)
#'
#' # Explicitly calls the 2019 branding guidlines
#' ggplot(mtcars, aes(mpg, wt)) +
#'   geom_point(aes(colour = hp)) +
#'   scale_colour_idea(palette="qual", discrete = FALSE, year = 2019)
#'
#' # Chooses the bluegray palette
#' ggplot(data = mpg) +
#'   geom_point(mapping = aes(x = displ, y = hwy, color = class)) +
#'   scale_colour_idea(palette="bluegray")
#'
#' @export
#'
#' @importFrom ggplot2 discrete_scale scale_color_gradientn
scale_color_idea <- function(palette="div",
                             discrete = TRUE,
                             alpha = 1,
                             reverse = FALSE,
                             year = 2024,...) {
  if (discrete) {
    ggplot2::discrete_scale("colour", "idea", palette=idea_palette_ramp(palette, alpha = alpha, reverse = reverse, year = year), ...)
  } else {
    ggplot2::scale_color_gradientn(colours = idea_palette_ramp(palette, alpha = alpha, reverse = reverse, year = year, ...)(256))
  }
}

#' @rdname scale_color_idea
#' @export
scale_colour_idea <- scale_color_idea



#' IDEA fill palette for ggplot2
#'
#' @param palette Choose from 'idea_palettes' list
#'
#' @inheritParams viridis::scale_fill_viridis
#' @inheritParams idea_palette_ramp
#'
#' @param discrete whether to use a discrete colour palette
#'
#' @param ... additional arguments to pass to scale_color_gradientn
#'
#' @examples
#' library(ggplot2)
#' ggplot(diamonds) + geom_bar(aes(x = cut, fill = clarity)) +
#'   scale_fill_idea()
#'
#' @importFrom ggplot2 scale_fill_manual discrete_scale scale_fill_gradientn
#' @importFrom viridis scale_fill_viridis
#'
#' @export
scale_fill_idea <- function(palette="div",
                            discrete = TRUE,
                            alpha=1,
                            reverse = TRUE,
                            year = 2024, ...) {
  if (discrete) {
    discrete_scale("fill", "idea", palette=idea_palette_ramp(palette, alpha = alpha, reverse = reverse, year = year), ...)
  }
  else {
    scale_fill_gradientn(colours = idea_palette_ramp(palette, alpha = alpha, reverse = reverse, year = year)(256), ...)
  }
}


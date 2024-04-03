#' Theme inspired by IDEA Brand Guidelines
#'
#' Theme inspired by the plots on
#' [IDEA Brand Guidelines](https://brandfolder.com/ideapublicschools).
#'
#' @param base_size base font size, given in pts.
#' @param base_family base font family
#'
#' @importFrom ggplot2 %+% %+replace%
#'
#' @family themes idea
#' @export
theme_idea_light <- function(base_size = 12, base_family = "sans"){
  ggplot2::theme_light(base_size = base_size, base_family = base_family) +
    ggplot2::theme(strip.background = ggplot2::element_rect(fill = idea_colors$coolgray, color = idea_colors$coolgray),
                   axis.line = ggplot2::element_line(color = idea_colors$lightgray),
                   panel.grid = ggplot2::element_line(color = idea_colors$lightgray)
    )
}




#' Theme inspired by IDEA Brand Guidelines
#'
#' Theme inspired by the plots on
#' [IDEA Brand Guidelines](https://brandfolder.com/ideapublicschools).
#'
#'
#' @importFrom ggplot2 %+% %+replace%
#'
#' @family themes idea
#' @export
theme_idea_min <- function(){
  ideacolors::theme_idea_light() +
    ggplot2::theme(
      axis.line = ggplot2::element_line(color = NA),
      panel.grid  = ggplot2::element_blank(),
      panel.background = ggplot2::element_rect(fill = "gray95"),
      panel.border = ggplot2::element_rect(color = NA))
}

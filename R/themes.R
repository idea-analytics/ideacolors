#' Theme inspired by IDEA Brand Guidelines
#'
#' Theme inspired by the plots on
#' [IDEA Bradn Guidelines](whttps://ideapublicschoolsorg.sharepoint.com/sites/MCE/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FMCE%2FShared%20Documents%2FCreative%20Resources%2C%20Logos%2C%20and%20Mascots%2FBrand%20Guidelines%2Fbranding%5Fbrand%5Fguidelines%5F10x10%5F2019%2Epdf&parent=%2Fsites%2FMCE%2FShared%20Documents%2FCreative%20Resources%2C%20Logos%2C%20and%20Mascots%2FBrand%20Guidelines).
#'
#'
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
#' [IDEA Bradn Guidelines](whttps://ideapublicschoolsorg.sharepoint.com/sites/MCE/Shared%20Documents/Forms/AllItems.aspx?id=%2Fsites%2FMCE%2FShared%20Documents%2FCreative%20Resources%2C%20Logos%2C%20and%20Mascots%2FBrand%20Guidelines%2Fbranding%5Fbrand%5Fguidelines%5F10x10%5F2019%2Epdf&parent=%2Fsites%2FMCE%2FShared%20Documents%2FCreative%20Resources%2C%20Logos%2C%20and%20Mascots%2FBrand%20Guidelines).
#'
#'
#' @importFrom ggplot2 %+% %+replace%
#'
#' @family themes idea
#' @export
theme_idea_min <- function(){
  ideacolors::theme_idea_light() +
    ggplot2::theme(
      axis.line = element_line(color = NA),
      panel.grid  = element_blank(),
      panel.background = element_rect(fill = "gray95"),
      panel.border = element_rect(color = NA))
}

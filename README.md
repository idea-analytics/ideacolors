
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ideacolors <a href='https://idea-analytics.github.io/ideacolors'><img src='man/figures/logo.png' align="right" height="139" /></a>

<!-- badges: start -->
<!-- badges: end -->

The goal of ideacolors is simple: to ensure that IDEA R&A graphics
generated in `R` with `ggplot2` conform to [IDEA’s Brand
Guidelines](https://ideapublicschoolsorg.sharepoint.com/:b:/r/sites/MCE/Shared%20Documents/Creative%20Resources,%20Logos,%20and%20Mascots/Brand%20Guidelines/branding_brand_guidelines_10x10_2019.pdf?csf=1&web=1&e=SfZG79)
by providing themes and scales. It uses the palette defined in the Brand
Guidelines document found on pages 21-22.

The point is to help us innovate on the content of our visualizations
rather than the look and feel. Indeed, the latter is important in
conveying analysis and insights in a familier way, but it remains more
sizzle than steak.

## Installation

Since this is an internal package, you need to install the development
version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("idea-analytics/ideacolors")
```

## Examples

Here we can use `scale_idea_colors` and `theme_idea_light`

``` r
library(ideacolors)

library(tidyverse)
#> ── Attaching packages ─────────────────────────────────────── tidyverse 1.3.0 ──
#> ✓ ggplot2 3.3.3     ✓ purrr   0.3.4
#> ✓ tibble  3.1.0     ✓ dplyr   1.0.5
#> ✓ tidyr   1.1.3     ✓ stringr 1.4.0
#> ✓ readr   1.4.0     ✓ forcats 0.5.0
#> ── Conflicts ────────────────────────────────────────── tidyverse_conflicts() ──
#> x dplyr::filter() masks stats::filter()
#> x dplyr::lag()    masks stats::lag()

p <- ggplot(mtcars, aes(x=disp, y=mpg)) +
  geom_point(aes(color=as_factor(cyl))) +
  scale_color_idea(palette = "div") +
  theme_idea_light()
  
p
```

<img src="man/figures/README-example-1.png" width="100%" />

And we can change it up with a qualitative color scale and
`theme_idea_min`:

``` r
p + 
  scale_color_idea(palette = "qual") +
  theme_idea_min()
#> Scale for 'colour' is already present. Adding another scale for 'colour',
#> which will replace the existing scale.
```

<img src="man/figures/README-example_2-1.png" width="100%" />

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/master/examples>.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.

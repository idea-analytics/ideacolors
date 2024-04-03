# ideacolors 2.0.0

## New features

* Add `idea_colors_2019` as alias for `idea_colors`

* Add `idea_palettes_2019` as alias for `idea_colors`

* Add `idea_colors_2024` and `idea_palettes_2024` to represent new
  branding guidelines
  
* Add `year` argument to `scale_color_idea()`, `scale_fill_idea()`,
  `scale_color_camp_rio()`, `scale_fill_camp_rio()`, `idea_palette_ramp()`,
  `camp_rio_palette_ramp()` to allow for switching between branding guidelines
  
## Breaking changes

* All palette ramps and scales will default to the most recent branding
  guidelines available. Visualizations from previous versions may not be
  reproducible without adding the `year` argument.
  
* `idea_palette_ramp()`, `scale_color_idea()`, `scale_fill_idea()` will use the
  `year = 2024` argument by default, where previous behavior defaulted to the
  2019 branding guidelines. It is suggested to use
  `scale_color_idea(year = 2019)` or `scale_fill_idea(year = 2019)` to preserve
  compatibility with previous visualizations.
  
* `idea_colors$magenta` and `idea_colors_2019$magenta` has no equivalent in
  `idea_colors_2024`. The new accent color is `idea_colors_2024$vermillion`.

## Deprecated

* `camp_rio_colors` will be permanently renamed `camp_rio_colors_2022` to
  reference branding guidelines. **`camp_rio_colors` is deprecated and can no
  longer be called.**
  
* `camp_rio_palettes` will be permanently renamed `camp_rio_palettes_2022` to
  reference branding guidelines. **`camp_rio_palettes` is deprecated and can no
  longer be called.**
  
# ideacolors 1.0.0

## New features

* Add `camp_rio_colors`, `camp_rio_palettes`, `camp_rio_palette_ramp()`,
  `scale_color_camp_rio()`, and `scale_fill_camp_rio()`

## Minor changes

* Minor updates to documentation to switch links to brandfolder

* Updated pkgdown page, yml, package authors, description

# ideacolors 0.1.0

* Publish package

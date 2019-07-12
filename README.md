
<!-- README.md is generated from README.Rmd. Please edit that file -->

## treklogos

A compilation of Star Trek logos used for testing programmatic
image-derived color palette modeling (see
[here](https://leonawicz.github.io/imgpalr/) for details). All logo
artwork credited to Kris Trigwell. This is a back up from
[st-minutiae](http://www.st-minutiae.com/resources/logos/) to avoid
repeated server image requests.

While this is an excellent collection of logos to work with in terms of
comprehensiveness, one problematic aspect of using these logos for
deriving associated color palettes is that the vast majority of them
unfortunately include a superfluous shadow effect that adds shades of
gray and near-black to an image; colors that are not actually part of
the logo.

Similarly, the GIF images also force a white background around each
logo. Transparent-background PNG files would make these much more
versatile in many use cases, but at a minimum having white backgrounds
is an issue because some logos truly include white or near-white colors
and some do not. This forces decisions around whether to trim near-white
colors from a palette to be made by eye on an image by image basis.

On both counts, handling near-black and near-white colors is inherently
challenging given the file format and included visual effects.

Here are a couple examples using one of the logos:

``` r
library(imgpalr)
x <- "logos/png/Cardassian.png"
image_pal(x, type = "qual", saturation = c(0.5, 1), plot = TRUE)
```

![](README_files/figure-gfm/ex-1.png)<!-- -->

    #> [1] "#FFFF80" "#21190B" "#C3C304" "#533E39" "#939E8F" "#686868" "#3B4439"
    #> [8] "#AD5A4A" "#FFFFE3"
    image_pal(x, type = "seq", saturation =  c(0.5, 1), plot = TRUE)

![](README_files/figure-gfm/ex-2.png)<!-- -->

    #> [1] "#857676" "#B26C61" "#9E5847" "#9E855A" "#DADA69" "#E5E558" "#8D9A56"
    #> [8] "#5E7759" "#ACC1AC"
    image_pal(x, type = "div", bw =  c(0, 0.9), brightness = c(0.5, 1), plot = TRUE)

![](README_files/figure-gfm/ex-3.png)<!-- -->

    #> [1] "#8C9D7F" "#A8B59F" "#C5CEBF" "#E2E6DF" "#FFFFFF" "#EBD8D2" "#D7B1A5"
    #> [8] "#C38A78" "#B0644B"

## treklogos

A compilation of Star Trek logos used for testing programmatic image-derived color palette modeling (see [here](https://leonawicz.github.io/imgpalr/) for details). All logo artwork credited to Kris Trigwell. This is a back up from [st-minutiae](http://www.st-minutiae.com/resources/logos/) to avoid repeated server image requests.

While this is an excellent collection of logos to work with in terms of comprehensiveness, one problematic aspect of using these logos for deriving associated color palettes is that the vast majority of them unfortunately include a superfluous shadow effect that adds shades of gray and near-black to an image; colors that are not actually part of the logo.

Similarly, the GIF images also force a white background around each logo. Transparent-background PNG files would make these much more versatile in many use cases, but at a minimum having white backgrounds is an issue because some logos truly include white or near-white colors and some do not. This forces decisions around whether to trim near-white colors from a palette to be made by eye on an image by image basis.

On both counts, handling near-black and near-white colors is inherently challenging given the file format and included visual effects.

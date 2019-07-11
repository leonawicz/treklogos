download_logos <- function(dir = "logos"){
  for(i in c("gif", "png")) dir.create(file.path(dir, i), showWarnings = FALSE, recursive = TRUE)
  if(!requireNamespace("magick", quietly = TRUE)){
    message("This function requires the magick package. Install and rerun.")
    return(invisible())
  }
  for(i in 1:nrow(rtrek::stLogos)){
    print(i)
    url <- rtrek::stLogos$url[i]
    file <- basename(url)
    downloader::download(url, destfile = file.path(dir, "gif", file), quiet = TRUE, mode = "wb")
    x <- magick::image_read(file.path(dir, "gif", file))
    magick::image_write(x, file.path(dir, "png", gsub("\\.gif$", ".png", file)), "png")
  }
  invisible()
}

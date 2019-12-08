#' Get file name from full path 
#'
#' @export
name_from_path <- function(path) {
  gsub("\\.[a-zA-Z0-9]+$", "", gsub("^.*\\/", "", path))
}

#' Filter paths by given pattern
#'
#' @export
filter_paths <- function(paths, pattern=".txt") {
  paths[grepl(pattern, paths)]
}

#' Exclude paths by given pattern
#'
#' @export
exclude_paths <- function(paths, pattern=".R") {
  paths[!grepl(pattern, paths)]
}

#' Get paths by given pattern
#'
#' @export
get_paths <- function(path=".", pattern=".RDS") {
  list.files(path, pattern=pattern, full.names=T)
}

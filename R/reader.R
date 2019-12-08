#' Read rds files to named list
#'
#' @export
read_rds <- function(paths) {
  fnames <- make.names(name_from_path(paths))
  lapply(setNames(paths, fnames), readRDS)
}

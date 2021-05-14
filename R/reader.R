#' Read rds files to named list
#'
#' @importFrom stats setNames
#' @export
read_rds <- function(paths) {
  fnames <- make.names(name_from_path(paths))
  lapply(stats::setNames(paths, fnames), readRDS)
}

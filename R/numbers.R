#' Normalize numeric vectors by given value
#'
#' @export
norm_values <- function(value, maxv, minv, nval=10) {
  return((value - minv) / (maxv - minv) * nval)
}

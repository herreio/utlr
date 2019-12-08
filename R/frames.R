#' Aggregate elements and arrange descending
#'
#' @export
get_elements <- function(data, column = "") {
  unique(data[,column])
}

#' Aggregate elements and arrange descending
#'
#' @importFrom magrittr %>%
#' @export
agg_elements <- function(data, columns = c()) {
  aggregated <- data %>% dplyr::group_by(.dots=columns) %>%
    dplyr::summarise_all(length)
  aggregated <- aggregated[,1:(length(columns)+1)] %>%
    dplyr::rename(Total = length(columns) + 1)
  return(dplyr::arrange(aggregated, -Total))
}

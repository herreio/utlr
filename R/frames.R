#' Aggregate elements and arrange descending
#'
#' @export
get_elements <- function(data, column = "") {
  unique(data[,column])
}

#' Aggregate elements and arrange descending
#'
#' @importFrom dplyr group_by_at
#' @importFrom dplyr summarise_all
#' @importFrom dplyr rename
#' @importFrom dplyr arrange
#' @export
agg_elements <- function(data, columns = c()) {
  aggregated <- data %>% dplyr::group_by_at(columns) %>%
    dplyr::summarise_all(length)
  aggregated <- aggregated[,1:(length(columns)+1)] %>%
    dplyr::rename(Total = length(columns) + 1)
  return(dplyr::arrange(aggregated, -Total))
}

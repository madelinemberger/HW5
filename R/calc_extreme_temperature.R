
#' Title
#'
#' @param temp
#'
#'
#' @return
#' @export
#'
#' @examples
#'

calc_extreme_temp <- function(temp){
  #find the max and min temperatures
  max_temp = max(temp$Anomaly)
  hot_year = temp %>%
    filter(Anomaly == max_temp) %>%
    select(Date) %>%
    as.numeric()

  min_temp = min(temp$Anomaly)
  cold_year = temp %>%
    filter(Anomaly == min_temp) %>%
    select(Date) %>%
    as.numeric()

  #build two table with the values to return

  temp_table <- matrix(c(hot_year, max_temp, cold_year, min_temp), nrow = 2, ncol = 2, byrow = TRUE,
                       dimnames = list(c("Min", "Max"), c("Year", "Anomaly")))

  return(temp_table)
}



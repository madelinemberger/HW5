
#' Title
#'
#' @param precip
#'
#' @return
#' @export
#'
#' @examples


calc_extreme_rain <- function(precip){
  #find the max and min precipitation
  min_rain = min(precip$Anomaly)
  dry_year = precip %>%
    filter(Anomaly == min_rain) %>%
    select(Date) %>%
    as.numeric()

  max_rain = max(precip$Anomaly)
  wet_year = precip %>%
    filter(Anomaly == max_rain) %>%
    select(Date) %>%
    as.numeric()

  rain_table <- matrix(c(dry_year, min_rain, wet_year, max_rain),
                       nrow = 2,
                       ncol = 2,
                       byrow = TRUE,
                          dimnames = list(c("Min", "Max"), c("Year", "Anomaly")))

  return(rain_table)

}

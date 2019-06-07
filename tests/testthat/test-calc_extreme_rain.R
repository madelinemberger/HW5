clim_test_data =
  as.data.frame(
    cbind(
      Date = c(1:4),
      Value  = rep(1, times = 4),
      Anomaly  = rep(1, times = 4)
    )
  )

expectthat(calc_extreme_rain(clim_test_data), expect_that(min_temp))

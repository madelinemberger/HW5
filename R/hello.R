# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'


library(tidyverse)
library(roxygen2)
library(devtools)

hello <- function() {
  print("Hello, world!")
}

temp <- read_csv("temp (1).csv")
precip <- read_csv("precipitation (1).csv")

use_data(temp, pkg=HW5)
use_data(precip, pkg=HW5)

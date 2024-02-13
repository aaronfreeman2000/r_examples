## Install necessary packages

# install CRAN packages
install.packages(
  c("ggplot2", "tibble", "tidyr", "forcats", "purrr", "prismatic", "corrr", 
    "cowplot", "ggforce", "ggrepel", "ggridges", "ggsci", "ggtext", "ggthemes", 
    "grid", "gridExtra", "patchwork", "rcartocolor", "scico", "showtext", 
    "shiny", "plotly", "highcharter", "echarts4r")
)

# install from GitHub since not on CRAN
install.packages("devtools")
devtools::install_github("JohnCoene/charter")

# Read and store data in "chic"

chic <- readr::read_csv("https://cedricscherer.com/data/chicago-nmmaps-custom.csv")

#view data without loading packages using function and then ::
tibble::glimpse(chic)

head(chic, 10)

#Load up ggplot
library(ggplot2)
library(tidyverse)

## start by defing a plotting object by calling "ggplot(data = df)"
## If you want to plot two variables one on the x and one on the y axis,
## this would be positional aesthetics and thus we use
## "aes(x = var1, y = var2) to the ggplot().

## Here lets map the variable date (x) to variable temp (y)

(g <- ggplot(chic, aes(x = date, y =temp)))

# notice that its just the panel. ggplot2 does not know how we want to plot that
# data, we still need to provide geometry


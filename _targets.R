library(targets)
library(tidyverse)
library(dataRetrieval)

options(tidyverse.quiet = TRUE)

source("1_fetch.R")
source("2_process.R")
source("3_visualize.R")

# Return the complete list of targets
c(p1_targets_list, p2_targets_list, p3_targets_list)

# INSTALL
# List of packages to install if they are deleted for some reason.

# Packages ---------------------------------------------------------------------

# This takes care of a lot...
install.packages("tidyverse")
install.packages("tidycensus")
install.packages("viridis")
install.packages("leaflet")
install.packages("lintr")
install.packages("devtools")
install.packages("mapview")

# Addins for RStudio -----------------------------------------------------------

# For faster rendering of RMarkdown...
devtools::install_github("jeffjjohnston/RStudioConsoleRender")
# CytoExploreR expanded colour theme
# Viridis palettes
library(viridis)
viridis_pal <- viridis(10, option = "D")
plasma_pal <- viridis(10, option = "C")

# Remove overlapping colours
viridis_pal <- viridis_pal[-10]
plasma_pal <- plasma_pal[-c(1:4)]

# Combine palettes
custom_pal <- c(viridis_pal, rev(plasma_pal))

# Set custom theme
cyto_plot_theme(point_col_scale = custom_pal)
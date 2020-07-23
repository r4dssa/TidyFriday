remotes::install_github("GuangchuangYu/hexSticker")

# map of saudi

library(sf)
library(dplyr)
library(hexSticker)
library(ggplot2)
theme_set(theme_minimal())



# Reading the Boundires
region_boundries <- st_read("hexa-sticker/data/sau_adm1/SAU_adm1.shp") %>%
  select(NAME_1,geometry )



# Creating the plot
p <- ggplot(data = region_boundries, aes(fill = "#ED9121")) + geom_sf(show.legend = F)
p <- p + theme_transparent() + theme_void()

# Creating the sticker
s <- sticker(p, s_x=1, s_y=.7, s_width=1.20, s_height=1.9, package="R4DSSA", p_size=6,p_y = 1.5 ,h_size = 1, p_family = "gochi",
             filename="hexa-sticker/img//r4dssa-sticker.png")


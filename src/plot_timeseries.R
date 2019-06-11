## plot_timeseries ##
# Make and save an ice cover timeseries plot

# input ------------------------------------------------------------------- 

# data file
infile = "data/processed/ice_cover.rda"

# plot file
outfile = "figures/timeseries.png"

# setup ------------------------------------------------------------------- 

# external libraries
library(ggplot2)

# process -----------------------------------------------------------------

# plot
plt = ggplot(df)+
  geom_path(aes(x=year, y=ice_cover))+
  labs(x="Year", y=expression(paste("Sea ice area [million"," km"^"2","]")))+ theme_bw()

# save
ggsave(plt, filename = outfile, height = 3, width = 5, units = "in", dpi = 300)
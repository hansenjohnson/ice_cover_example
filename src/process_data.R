## process_data ##
# Read , process , and save ice cover timeseries data

# input -------------------------------------------------------------------
# choose data file
infile = "data/raw/1.SeaIce-NCW-EN.csv"

# choose output file
outfile = "data/processed/ice_cover.rda"

# process ----------------------------------------------------------------- 

# read in data and rename columns
df = read.csv(infile, skip = 2, col.names = c("year", "ice_cover"))

# remove missing values
df = df[complete.cases(df),]

# format year
df$year = as.numeric(as.character(df$year))

# save
save(df, file = outfile)
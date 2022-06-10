library(plumber)
library(jsonlite)
library(magrittr)

port <- Sys.getenv('PORT')

server <- plumb("plumber.R")

server$run(
	host = '0.0.0.0',
	port = as.numeric(port),
	docs=TRUE
)

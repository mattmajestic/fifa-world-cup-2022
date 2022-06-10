library(shiny)
library(shinydisconnect)
library(shinybrowser)
library(shinydashboard)
library(shinydashboardPlus)
library(shinyjs)
library(waiter)
library(DT)
library(ggplot2)
library(plotly)

summary_tag <- h3("Welcome to the Fifa World Cup 2022 App for looking at some of the favored odds I have on the upcoming world up")

fifa_df <- read.csv("fifa-world-cup-2022.csv",stringsAsFactors = FALSE)
#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)
library(ggplot2)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Plotting Two Variables From Iris Dataset"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      selectInput("variable", "First variable:",
                  list("Sepal length" = "Sepal.Length",
                       "Sepal width"  = "Sepal.Width",
                       "Petal length" = "Petal.Length",
                       "Petal width"  = "Petal.Width")),
      
      selectInput("variable2", "Second variable:",
                  list("Sepal length" = "Sepal.Length",
                       "Sepal width"  = "Sepal.Width",
                       "Petal length" = "Petal.Length",
                       "Petal width"  = "Petal.Width"))
    ),
    
    
    mainPanel(
      h3(textOutput("displaytext")),
      plotOutput("plot")
    )
  )
  ))
  

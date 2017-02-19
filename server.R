#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

data <- iris

# Define server logic required to plot variables
shinyServer(function(input, output) {
  
  # Create a reactive text
  text <- reactive({
    paste(input$variable, 'versus', input$variable2)
  })
  
  # Return as text the selected variables
  output$displaytext <- renderText({
    text()
  })
  
  # Generate a plot of the requested variables
  output$plot <- renderPlot({
    p <- ggplot(data, aes_string(x=input$variable, y=input$variable2, colour="Species")) + geom_point()
    print(p)
  })
})
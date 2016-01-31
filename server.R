library(shiny)

# This apps use the 'VADeaths' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Pre-select a color palette to colorize the bar graph
colors = c("red", "yellow", "green", "violet", "blue")

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  ##Total Number of Death for this population group
  output$prediction <- renderPrint({sum(VADeaths[,input$population_group]*1000)})
  
  # Fill in the spot we created for a plot
  output$deathPlot <- renderPlot({
      # Render a barplot
    barplot(VADeaths[,input$population_group], 
            main=input$population_group,
            ylab="Death Rate per 1000 population",
            xlab="Age Group",
            col=colors)
  })
  
})
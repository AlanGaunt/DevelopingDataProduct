library(shiny)

# This apps use the 'VADeaths' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Pre-select a color palette to colorize the bar graph
colors = c("red", "yellow", "green", "violet", "blue")

# Define a server for the Shiny app
shinyServer(function(input, output) {
  
  # Fill in the spot we created for a plot
  output$deathPlot <- renderPlot({
    
    # Render a barplot
    barplot(VADeaths[,input$ population_group]*1000, 
            main=input$ population_group,
            ylab="Number of Death",
            xlab="Age Group",
            col=colors)
  })
})
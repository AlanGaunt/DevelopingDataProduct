library(shiny)

# This apps use the 'VADeaths' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Number of Death in Virginia in Year 1940"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("population_group", "Population Group:", 
                    choices=colnames(VADeaths)),
        hr(),
        helpText("This shiny app will show Number of Death in Virginia in Year 1940.  Please select the desired population group, 
                 it will show correnspoding number of death sorted by age group")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("deathPlot")  
      )
      
    )
  )
)
library(shiny)

# This apps use the 'VADeaths' dataset in the datasets
# package (which generally comes preloaded).
library(datasets)

# Define the overall UI
shinyUI(
  
  # Use a fluid Bootstrap layout
  fluidPage(    
    
    # Give the page a title
    titlePanel("Death Rate Analysis for in Virginia (Year 1940), sorted by Population Group"),
    
    # Generate a row with a sidebar
    sidebarLayout(      
      
      # Define the sidebar with one input
      sidebarPanel(
        selectInput("population_group", "Please select one Population Group:", 
                    choices=colnames(VADeaths)),
        hr(),
        helpText("This shiny app will show Death Rates in Virginia in Year 1940 on selected population group.  
                 Please select the desired population group, 
                 it will show correnspoding Dealth Rates sorted by age group,
                 as well as give you the total number of death for the selection 
                 population group"),
        hr(),
        helpText("Source code ui.R & server.R stored in below link https://github.com/eagle-eye33/DevelopingDataProduct")
      ),
      
      # Create a spot for the barplot
      mainPanel(
        plotOutput("deathPlot"),
        h3('Yearly Number of Death for this population group'),
        verbatimTextOutput("prediction")
      )
      
    )
  )
)
library(shiny)
shinyUI(fluidPage(
  titlePanel('Shiny works'),
  
  sidebarLayout(
    
    # Sidebar with a slider input
    sidebarPanel(
      numericInput("season",
                   "Season",
                   min = 2005,
                   max = 2015,
                   value = 2015,
                   step = 1),
      h5(strong('User Instructions')),
      
      helpText('1. There is a widget on the top left that is used to input the season.'),
      helpText('2. On the right, you see two tabs, one is for comparison with the top competitors and the other is for ranking table.'),
      helpText('3. In the Comparison tab, you see a plot that shows the goals difference of FC Barcelona with its top competitors during the given season.'),
      helpText('4. The goals difference for home games is shown with label H in magenta color.'),
      helpText('5. The goals difference for away games is shown with label A in blue color.'),
      helpText('6. The horizontal line is at goals difference of zero. This line indicates the drawn games.'),
      helpText('7. The labels above the horizontal line at y = 0 show the games that Barca won by the number of goals on the y-axis.'),
      helpText('8. The labels below the horizontal line at y = 0 show the games that Barca lost by the number of goals shown on the y-axis.'),
      helpText('9. The Rankings tab shows the rankings of the La Liga for top 20 teams of the season.'),
      
      helpText('Contact: For any questions, write to me at mohsinrazadanish@gmail.com')
      
    ),
    
    mainPanel(
      
      h4("Season: ", inline = TRUE),
      h4(textOutput("Season", inline = TRUE)),
      
      tabsetPanel(
        tabPanel("Comparison", plotOutput('performance_Plot')),
        tabPanel("Rankings" , dataTableOutput("table"))
      )
      
    )
    
  )
  
)
)
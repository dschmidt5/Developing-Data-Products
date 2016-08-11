#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

shinyUI(pageWithSidebar(
  headerPanel("Fuel Cost Calculator"),
  sidebarPanel(
    h3('Instructions:'),
    h4("Use the sliders to select the desired Trip Distance and Fuel Price by clicking on the circle and dragging left or right. Use the arrows on the right side of the input box to change the Fuel Economy."),
    h4("The right side of the screen will display the values you entered and the resulting Fuel Consumption and Total Fuel Cost."),
    sliderInput("miles", "Trip distance (miles):", min = 0, max = 5000, value = 500),
    numericInput("fuelecon", "Fuel Economy (mpg):", 10, min = 1, max = 40, step = 1),
    sliderInput("price", "Fuel Price ($US)", min = 1.50, max = 4.00, value = 2.29)
  ),
  
  mainPanel(
    h3('Values Entered and Results'),
    h4('***Note: These values cannot be changed here. You must use the inputs on the left to see these values change.'),
    h4('Trip Distance Entered'),
    verbatimTextOutput("miles"),
    h4('Fuel Economy Entered'),
    verbatimTextOutput("fuelecon"),
    h4('Fuel Price Entered'),
    verbatimTextOutput("price"),
    h4('Resulting Fuel Consumption (gal)'),
    verbatimTextOutput("fuelUsed"),
    h4('Resulting Total Fuel Cost ($US)'),
    verbatimTextOutput("total")
  )
))
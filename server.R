#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram

fuelUsed <- function(miles,fuelecon) miles/fuelecon
tripCost <- function(miles,fuelecon,price) (miles/fuelecon)*price

shinyServer(function(input, output) {
   output$miles = renderPrint({input$miles})
   output$fuelecon = renderPrint({input$fuelecon})
   output$price = renderPrint({input$price})  
   output$fuelUsed = renderPrint({fuelUsed(input$miles, input$fuelecon)})
   output$total = renderPrint({tripCost(input$miles,input$fuelecon,input$price)})
})

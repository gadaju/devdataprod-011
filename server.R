hr_max <- function(age) { 220 - age }
hr_lo  <- function(age) {(220 - age) *.55}
hr_hi  <- function(age) {(220 - age) *.85}
shinyServer(
 function(input, output) {
 output$OutputAge <- renderPrint({input$InputAge})
 output$max <- renderPrint({hr_max(input$InputAge)})
 output$low <- renderPrint({hr_lo(input$InputAge)})
 output$high <- renderPrint({hr_hi(input$InputAge)})
}
)
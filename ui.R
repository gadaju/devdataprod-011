shinyUI(
 pageWithSidebar(
 # Application title
 headerPanel("Target Heart Rate Calculator for Aerobic Excerise"),
 sidebarPanel(
# numericInput('InputAge', 'Your Age in Years', 40, min = 20, max = 65, step = 1),
 sliderInput('InputAge', 'Your Age in Years',value = 40, min = 18, max = 65, step = 1)
#   submitButton('Submit')
 ),
 mainPanel(
 h3('Results of target Heart Rate Range Calculation'),
 h4('You entered your age'),
 verbatimTextOutput("OutputAge"),
 h4('Your maximum Heart Rate is '),
 verbatimTextOutput("max"),
 h4('The lower limit of the target range for your age is '),
 verbatimTextOutput("low"),
 h4('The upper limit of the target range for your age is '),
 verbatimTextOutput("high"),
 h5('Note: these calculations are based on averages. It is recommended that you exercise within 55 to 85 percent of your maximum heart rate for at least 20 to 30 minutes to get the best results from aerobic exercise.')
 )
 )
)
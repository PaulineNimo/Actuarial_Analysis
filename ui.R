library(shiny)
shinyUI(fluidPage("Actuarial Analysis",
  style = "font-family: 'times'; font-si20pt",
  tabPanel("Financial Risk Management"),img(src = "default.jpg",height=250,width=500),
  sidebarLayout(
    mainPanel(
      tabsetPanel(
        tabPanel("Credit Risk",
        h1(""),
        h2("Credit Risk"),
        p("This is the risk of default by a borrower."),
        h3("Expected Credit Loss",style="color:blue"),
        p("This is the amount expected not to be regained due to default."),
        p("Credit Risk is comprised of three drivers namely; default, loss given default and credit exposure."),
        br(),
        p("Credit loss is calculated as a multiple of the above where probability of default is considered as a Bernoulli random variable."),
        br(),
        p(" 0<Pr(b)<1 ",align="center"),
        br(),
        p("ECL = E(b) * CE * (1-f) where", br(),"CE is the credit exposure",br(),"f is the recovery rate usually given in percentage",br(),"b is the random variable such that b=0 if no default occurs and b=1 if default occurs")
        )
      ))),
    
    sidebarPanel(fluidRow(
      numericInput("CE",label = h3("Credit Exposure"),value=0),   
      sliderInput("RR",label = h3("Recovery Rate(in %)"),min = 0, max = 100, value = 0),
      sliderInput("PoD",label = h3("Probability of Default"),min = 0, max = 1, value = 0.25),
      submitButton("submit",label="submit",icon=icon("refresh")),
      textOutput("ECL")
    )),
  
  )
)


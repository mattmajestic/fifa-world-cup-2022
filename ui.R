ui <- dashboardPage(dashboardHeader(title = "Fifa World Cup 2022 App",controlbarIcon = icon("sign-in-alt")),
                    dashboardSidebar(),
                    dashboardBody(
                      shinybrowser::detect(),
                      useShinyjs(),
                      summary_tag,
                      numericInput("bet_size","Bet Sizing ($)",value = 500,min = 200,max = 10000000000),
                      uiOutput("odds_ui"))
                    )
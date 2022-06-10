ui <- dashboardPage(dashboardHeader(title = "Fifa World Cup 2022 App",controlbarIcon = icon("sign-in-alt")),
                    dashboardSidebar(),
                    dashboardBody(
                      shinybrowser::detect(),
                      useShinyjs(),
                      summary_tag,
                      uiOutput("odds_ui"))
                    )
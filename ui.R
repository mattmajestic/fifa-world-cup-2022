ui <- shinydashboardPlus::dashboardPage(title = "Fifa World Cup 2022 App",scrollToTop = TRUE,
                                        shinydashboardPlus::dashboardHeader(title = shinyDashboardLogo(
                                          theme = "blue_gradient",
                                          boldText = "Fifa 2022",
                                          mainText = "World Cup",
                                          badgeText = "Beta")),
                                        dashboardSidebar(collapsed = FALSE,
                                        tags$script('$( document ).on("shiny:sessioninitialized", function(event) {Shiny.setInputValue("too",returnCitySN["cip"]);});'),
                                        useWaitress(color = "black",percent_color = "aqua"),
                                        useShinyjs(),
                                        sidebarMenu(id = "sm",
                                        menuItem("Odds Viewer",tabName = "odds",icon = icon("sign-in-alt"))
                                                         )),
                                        dashboardBody(
                                          shinybrowser::detect(),
                                          useShinyalert(),
                                          disconnectMessage(
                                            text = "Come Back In?",refresh = "Log Back In",background = "#000000",colour = "#FFFFFF",refreshColour = "#00FFFF",overlayColour = "#444444",overlayOpacity = 0.6,
                                            width = 450,top = 50,size = 22,css = ""),
                                          tags$style(HTML(".box.box-solid.box-primary>.box-header {}.box.box-solid.box-primary{background:#ffffff}")),
                 tabItems(tabItem(tabName = "odds",
                                  fluidPage()
                                  ))
                                        ))
                                    

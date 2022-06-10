ui <- f7Page(
  title = "Fifa World Cup 2022 Odds",
  f7TabLayout(
    panels = tagList(
      f7Panel(title = "Payout Calculator", side = "left", theme = "light", "Summary", effect = "cover")
    ),
    navbar = f7Navbar(
      title = "Fifa World Cup 2022",
      hairline = TRUE,
      shadow = TRUE,
      leftPanel = TRUE,
      rightPanel = TRUE
    ),
    f7Tabs(
      animated = TRUE,
      #swipeable = TRUE,
      f7Tab(
        tabName = "Payouts",
        icon = f7Icon("folder"),
        active = TRUE,
        f7Flex(
          prettyRadioButtons(
            inputId = "color",
            label = "Select a color:",
            thick = TRUE,
            inline = TRUE,
            selected = "light",
            choices = c("light", "dark"),
            animation = "pulse",
            status = "info"),
        
        tags$head(
          tags$script(
            'Shiny.addCustomMessageHandler("ui-tweak", function(message) {
                var skin = message.skin;
                $("html").addClass("md");
                  $("html").removeClass("ios");
                  $(".tab-link-highlight").show();
                if (skin === "dark") {
                 $("html").addClass("theme-dark");
                } else {
                  $("html").removeClass("theme-dark");
                }
               });
              '
          )
        ),
        
        f7Shadow(
          intensity = 10,
          hover = TRUE,
          f7Card(
            title = "Payouts",
            shinybrowser::detect(),
            useShinyjs(),
            shinydashboard::box("App Summary",status = "danger",collapsible = TRUE,width = 3,background = "light-blue",solidHeader = TRUE,
                                summary_tag,
                                f7Stepper("bet_size","Bet Sizing ($)",value = 500,min = 200,max = 10000000000,step = 100)
            ),
            shinydashboard::box("Payout Calculations & Logic",status = "success",collapsible = TRUE,width = 9,background = "light-blue",solidHeader = TRUE,
                                uiOutput("odds_ui"))
          )
        )
      )
          )
        )
      )
)
                      
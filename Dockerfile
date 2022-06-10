FROM virtualstaticvoid/heroku-docker-r:shiny

ENV PORT=8080

RUN R -e "install.packages('shiny')"
RUN R -e "install.packages('shinydashboard')"
RUN R -e "install.packages('shinydashboardPlus')"
RUN R -e "install.packages('shinyalert')"
RUN R -e "install.packages('shinydisconnect')"
RUN R -e "install.packages('shinybrowser')"
RUN R -e "install.packages('shinyWidgets')"
RUN R -e "install.packages('shinyjs')"
RUN R -e "install.packages('tidyverse')"
RUN R -e "install.packages('httr')"
RUN R -e "install.packages('ggplot2')"
RUN R -e "install.packages('plotly')"

CMD ["/usr/bin/R", "--no-save", "--gui-none", "-f", "/app/app.R"]

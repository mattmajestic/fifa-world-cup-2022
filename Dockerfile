FROM virtualstaticvoid/heroku-docker-r:plumber

ENV PORT=8080

RUN R -e "install.packages('jsonlite')"
RUN R -e "install.packages('magrittr')"

CMD ["/usr/bin/R", "--no-save", "--gui-none", "-f", "/app/app.R"]

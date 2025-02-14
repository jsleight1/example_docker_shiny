ARG RVERSION=4.4.2
FROM rocker/r-ver:$RVERSION

RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
    libz-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libfontconfig1-dev \
    libfribidi-dev \
    libharfbuzz-dev \
    git

RUN Rscript -e "install.packages(c('httpuv', 'shiny'))"

RUN addgroup --system app && adduser --system --ingroup app app

WORKDIR /home/app

COPY app.R app.R
RUN chown app:app -R /home/app
USER app

EXPOSE 9000

CMD ["R", "-e", "shiny::runApp('/home/app')"]

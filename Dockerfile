FROM docker.io/btip2024/rstudio-verse-shiny-opencpu-seurat

RUN \
    apt-get update && \
    apt-get upgrade 

RUN mkdir -p /script

COPY installation.R /script

RUN Rscript /script/installation.R

EXPOSE 80
EXPOSE 443
EXPOSE 3838
EXPOSE 8787
EXPOSE 8004

CMD ["/init"]
# option is to expose ports
# option another is to add a CMD

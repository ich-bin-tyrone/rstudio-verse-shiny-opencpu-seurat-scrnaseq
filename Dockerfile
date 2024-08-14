FROM docker.io/btip2024/rstudio-verse-shiny-opencpu-seurat

RUN \
    apt-get update -y && \
    apt-get upgrade -y

RUN mkdir -p /scripts

COPY installation.R /scripts

RUN Rscript /scripts/installation.R

WORKDIR "/root"
RUN git clone https://github.com/BTIP2024/DR-scRNAseq
RUN git clone https://github.com/BTIP2024/api-documentation.git

RUN cp -R /root/DR-scRNAseq /srv/shiny-server/
RUN cp -R /root/api-documentation /srv/shiny-server/

EXPOSE 80
EXPOSE 443
EXPOSE 3838
EXPOSE 8787
EXPOSE 8004

CMD ["/init"]
# option is to expose ports
# option another is to add a CMD

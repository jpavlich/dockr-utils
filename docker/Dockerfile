
FROM rocker/tidyverse:4.3.2
VOLUME [ "/root/.R/site-library"]
ARG docker_folder="."
WORKDIR /scripts
ADD ${docker_folder}/*.sh .
WORKDIR /root
ADD ${docker_folder}/.bashrc .
RUN Rscript -e 'install.packages("testthat", force=FALSE)'
WORKDIR /package
# -i ensures that any command will source .bashrc https://stackoverflow.com/a/37286648
# ENTRYPOINT ["/bin/bash", "-c", "-i"]
ENTRYPOINT ["/bin/bash", "-c"]
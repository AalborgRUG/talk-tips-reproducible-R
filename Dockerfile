FROM robertdj/r-minimal:4.0.4

RUN Rscript -e 'install.packages("remotes")'


FROM robertdj/shiny:4.0.3-1.5.16.958

COPY --chown=shiny:shiny app.R $HOME/project/

RUN ln -s /home/shiny/project /srv/shiny-server/project

WORKDIR $HOME/project


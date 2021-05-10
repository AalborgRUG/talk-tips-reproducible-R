Talk on "Tips for Reproducible R"
=================================

The slides are in `slides/slides.html`.


# {targets}

{targets} demo in

- Starting script: `targets_demo/analysis.R`
- Targets file: `targets_demo/_targets.R`
- Generate data with `targets_demo/data-raw/generate_data.R`


# Docker

Create example Docker images in the root folder with commands

```
docker build --tag renv_demo .
```

and

```
docker build --tag renv_demo -f Dockerfile_xml2 .
```

After a build a container can be run with 

```
docker run --rm -it renv_demo:latest
```

The Shiny Docker can be created with the command

```
docker build --tag shiny_demo .
```

After a build the container can be run with the command

```
docker run --rm -it -p 3838:3838 shiny_demo:latest
```

Navigate to <http://localhost:3839/project> to see the app.
To see Shiny Server's default page, go to <http://localhost:3839>


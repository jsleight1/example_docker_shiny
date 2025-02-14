example_docker_shiny contains a small example R shiny application with an associated 
docker image at `docker.io/jsleight1/example_docker_shiny`.

`app.R` contains code from the kmeans shiny gallery example: `https://shiny.posit.co/r/gallery/start-simple/kmeans-example/`.

The application can be launched using

```
docker run -p 9000:9000 -it docker.io/jsleight1/example_docker_shiny:R4.4.2-latest
```

Viewed at:

```
http://localhost:9000/
```

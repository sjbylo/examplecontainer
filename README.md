# Example container

This is an example demo app which simply displays a greeting and the hostname. 
The default greeting can be changed at launch time.

## Run image from docker.io or quay.io

```
docker run --rm -d -p 8080:8080 --name demoapp docker.io/sjbylo/demoapp:latest
or
docker run --rm -d -p 8080:8080 --name demoapp   quay.io/sjbylo/demoapp:latest
docker kill demoapp
```

## Build from Dockerfile

```
docker build -t demoapp . 
```

## Run

```
docker run --rm -d -e GREETING="Hello World" -p 8080:8080 --name demoapp demoapp 
```

The container will display something like:

```
curl -s localhost:8080
Greeting: Hello World - Hostname: 3a4f62444820
```

Set the env variable GREETING with whatever you like, the default is Hello

## Clean up

```
docker kill demoapp
```

# Source at

https://github.com/sjbylo/examplecontainer

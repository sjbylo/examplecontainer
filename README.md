# Example container

# Build

```
docker build -t myapp . 
```

# Run

```
docker run --rm -it -e GREETING="Hello World" -p 8080:8080 myapp 
```

The container will display someting like:

```
curl localhost:8080
Greeting: Hello World - Hostname: 3a4f62444820
```

Set the env variable GREETING with whattever you like, default is Hello



# Example container

This is an example demo app which simply displays a geeting and the hostname. 
The default geeting can be changed at launch time.

# Build

```
docker build -t demoapp . 
```

# Run

```
docker run --rm -d -e GREETING="Hello World" -p 8080:8080 --name demoapp demoapp 
```

The container will display someting like:

```
curl -s localhost:8080
Greeting: Hello World - Hostname: 3a4f62444820
```

Set the env variable GREETING with whattever you like, default is Hello

# Clean up

```
docker kill demoapp
```




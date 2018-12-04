# examplecontainer

# Build

docker build -t myapp . 

# Run

docker run --rm -it -e GREETING=Greetings -p 8080:8080 myapp 

The container will display someting like:

```
Greeting: Greeting - hostname: 3a4f62444820
```

Set the env variable GREETING with whattever you like, default is Hello



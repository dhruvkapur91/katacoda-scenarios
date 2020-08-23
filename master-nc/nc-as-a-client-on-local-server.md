## NetCat as a Client

We were able to hit the public service `example.com` but we can ofcourse use a local server to simulate more scenarios. Lets pull off a static file server and try to hit it with nc. 

- Following command creates a static file server listening at port `8080` and serving the current working directory as output. 
- You don't need to understand docker for this tutorial, we are just using it as a easy way to start the server.

```bash
docker run --name static-file-server -d -v ${PWD}:/web -p 8080:8080 halverneus/static-file-server:v1.8.0
```{{execute}}

printf 'GET / HTTP/1.1\r\nHost: localhost\r\n\r\n' | nc localhost 8080        


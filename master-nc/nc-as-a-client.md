## NetCat as a Client
Most basic usage starts with `nc <host> <port>` creating a TCP connection to host on that port. It sends the standard input (of your terminal) through the connection to the host, and prints whatever it gets on to the standard output (of your terminal) 

```bash
printf 'GET / HTTP/1.1\r\nHost: example.com\r\n\r\n' | nc example.com 80
```{{execute}}

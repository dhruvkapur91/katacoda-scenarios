## NetCat as a Client
Most basic usage starts with `nc <host> <port>` creating a TCP connection to host on that port. It sends the standard input (of your terminal) through the connection to the host, and prints whatever it gets on to the standard output (of your terminal) 


```bash
printf 'GET / HTTP/1.1\r\nHost: example.com\r\n\r\n' | nc example.com 80 
```{{execute}}

You were able to make a GET request to `example.com` by nc!

- For some of you the command might not finish... You can use `ctrl + C` to interrupt the current command, but may want to think about why is this the case.
`echo "Ctrl+C to interrupt the command"`{{execute interrupt}}
- If you're in the mood for exploration, look at the nc man page to figure out how to solve it.
```bash
man nc
```{{execute}}


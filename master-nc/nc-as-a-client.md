## NetCat as a Client
Most basic usage starts with `nc <host> <port>` creating a TCP connection to host on that port. It sends the standard input (of your terminal) through the connection to the host, and prints whatever it gets on to the standard output (of your terminal) 


```bash
printf 'GET / HTTP/1.1\r\nHost: example.com\r\n\r\n' | nc example.com 80 
```{{execute}}

You were able to make a GET request to `example.com` by nc!

- You may notice that command hasn't really finished... You can use `ctrl + C` to kill the current command, but may want to think about why is this the case.
- If you're in the mood for exploration, look at the nc man page to figure out how to solve it.
```bash
man nc
```{{execute}}

In the next step, we answer this question... :) 
# King Arthur's Gold dedicated server

This is a basic dockerfile in order to run a King Arthur's Gold dedicated server. Has an entrypoint
it means that you can use the params that you want for your server. (ex. slots,ip,port,etc.)

USAGE:

```
docker build -t kag-server .
docker run -p 50301:50301/udp -p 50328:50328/udp -p 50301:5030 kag-server (Desired params ex. slots 16)
```

If you wanna access to the api you need to expose the 443 port.

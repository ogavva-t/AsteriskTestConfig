# AsteriskTestConfig

## How to use

### Without Trunk
```
 docker run -d -p 5060:5060/udp -p 10000-10100:10000-10100/udp -e EXTEN_PASSWORD=[NICE SECURE PASSWORD] -e EXT_MEDIA_ADDRESS=[YOUR IPADDRESS] -e EXT_SIGNALING_ADDRESS=[YOUR IPADDRESS] ogavvat/asterisk.testconfig
```

### With Trunk : TRUNK_TYPE=REG
```
 docker run -d -p 5060:5060/udp -p 10000-10100:10000-10100/udp -e EXTEN_PASSWORD=[NICE SECURE PASSWORD] \
  -e EXT_MEDIA_ADDRESS=[YOUR IPADDRESS] -e EXT_SIGNALING_ADDRESS=[YOUR IPADDRESS] \
  -e TRUNK_TYPE=REG -e TRUNK_URL=[TRUNK URL] -e TRUNK_PORT=[TRUNK_PORT] -e TRUNK_USERNAME=[TRUNK_USERNAME] -e TRUNK_PASSWORD=[TRUNK_PASSWORD] -e TRUNK_CALLERID=[TRUNK_CALLERID] \
  ogavvat/asterisk.testconfig
```

### With Trunk : TRUNK_TYPE=NO_AUTH
```
 docker run -d -p 5060:5060/udp -p 10000-10100:10000-10100/udp -e EXTEN_PASSWORD=[NICE SECURE PASSWORD] \
  -e EXT_MEDIA_ADDRESS=[YOUR IPADDRESS] -e EXT_SIGNALING_ADDRESS=[YOUR IPADDRESS] \
  -e TRUNK_TYPE=NO_AUTH -e TRUNK_URL=[TRUNK URL] -e TRUNK_PORT=[TRUNK_PORT] -e TRUNK_CALLERID=[TRUNK_CALLERID] \
  ogavvat/asterisk.testconfig
```



## SIP Account

- 9001 ... Music On Hold
- 9002 ... Echo
- 9003 ... Milliwatt
- 9004 ... Oubbound/Inbound Call via Trunk


### Debug With Sngrep

You can use sngrep inside the container.
https://github.com/irontec/sngrep

```
docker exec -it [Container Name] sngrep
```

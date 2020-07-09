# AsteriskTestConfig

## How to use

### Without Trunk
```
 docker run -d -p 5060:5060/udp -p 10000-10100:10000-10100/udp -e EXTEN_PASSWORD=[NICE SECURE PASSWORD] -e EXT_MEDIA_ADDRESS=[YOUR IPADDRESS] -e EXT_SIGNALING_ADDRESS=[YOUR IPADDRESS] ogavvat/asterisk.testconfig
```

### With Trunk : TRUNK_TYPE=REG
```
EXTEN_PASSWORD=[NICE SECURE PASSWORD]
EXT_IP_ADDR=[YOUR External IPADDRESS]
TRUNK_HOST=[TRUNK HOST ... Hostname or IP Address]
TRUNK_PORT=[TRUNK PORT]
TRUNK_USERNAME=[TRUNK USERNAME]
TRUNK_PASSWORD=[TRUNK PASSWORD]
TRUNK_CALLERID=[CALLERID ... e.g) 0501234578]

docker run -d -p 5060:5060/udp -p 10000-10100:10000-10100/udp -e EXTEN_PASSWORD=$EXTEN_PASSWORD \
  -e EXT_MEDIA_ADDRESS=$EXP_IP_ADDR -e EXT_SIGNALING_ADDRESS=$EXP_IP_ADDR \
  -e TRUNK_TYPE=NO_AUTH -e TRUNK_HOST=$TRUNK_HOST -e TRUNK_PORT=$TRUNK_PORT -e TRUNK_CALLERID=$TRUNK_CALLERID \
  -e TRUNK_TYPE=REG -e TRUNK_HOST=$TRUNK_HOST -e TRUNK_PORT=$TRUNK_PORT -e TRUNK_USERNAME=$TRUNK_USERNAME -e TRUNK_PASSWORD=$TRUNK_PASSWORD -e TRUNK_CALLERID=$TRUNK_CALLERID \
  ogavvat/asterisk.testconfig
```

### With Trunk : TRUNK_TYPE=NO_AUTH
```
EXTEN_PASSWORD=[NICE SECURE PASSWORD]
EXT_IP_ADDR=[YOUR External IPADDRESS]
TRUNK_HOST=[TRUNK HOST ... Hostname or IP Address]
TRUNK_PORT=[TRUNK PORT]
TRUNK_CALLERID=[CALLERID ... e.g) 0501234578]

docker run -d -p 5060:5060/udp -p 10000-10100:10000-10100/udp -e EXTEN_PASSWORD=$EXTEN_PASSWORD \
  -e EXT_MEDIA_ADDRESS=$EXP_IP_ADDR -e EXT_SIGNALING_ADDRESS=$EXP_IP_ADDR \
  -e TRUNK_TYPE=NO_AUTH -e TRUNK_HOST=$TRUNK_HOST -e TRUNK_PORT=$TRUNK_PORT -e TRUNK_CALLERID=$TRUNK_CALLERID \
  ogavvat/asterisk.testconfig
```

## Diagrams

![Diagram](https://github.com/ogavva-t/AsteriskTestConfig/blob/master/Diagrams/Diagram.png?raw=true "Diagram")



## SIP Account

- 9001 ... Music On Hold
- 9002 ... Echo
- 9003 ... Milliwatt
- 9004 ... Outbound/Inbound Call via Trunk

### Create Incoming Call

```
 docker exec -it [Container Name] createCallFile.sh [SIP Account: 9001-9004] [EXTENSION] [CALLERID]

 e.g)
  docker exec -it [Container Name] createCallFile.sh 9001 0312345678 05011112222
```

### Debug With Sngrep

You can use sngrep inside the container.
https://github.com/irontec/sngrep

```
docker exec -it [Container Name] sngrep
```

### Debug With Asterisk-CLI

```
docker exec -it [Container Name] rasterisk
```

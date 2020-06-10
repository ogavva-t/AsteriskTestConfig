# AsteriskTestConfig

How to use
```
 docker run -d -p 5060:5060/udp -p 10000-10100:10000-10100/udp -e EXTEN_PASSWORD=[NICE SECURE PASSWORD] -e EXT_MEDIA_ADDRESS=[YOUR IPADDRESS] -e EXT_SIGNALING_ADDRESS=[YOUR IPADDRESS] -e SIPTRUNK_IP=[TRUNK IPADDRESS] -e SIPTRUNK_PORT=[TRUNK_PORT] ogavvat/asterisk.testconfig
```



SIP Account

- 9001 ... Music On Hold
- 9002 ... Echo
- 9003 ... Milliwatt



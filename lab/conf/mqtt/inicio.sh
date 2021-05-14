#!/bin/sh

# ajustando rota
ip route add 10.10.10.0/24 via 10.10.100.100 
ip route add 2001:db8:2021:10::/64 via 2001:db8:2021:100::100 

# iniciando servidor nginx
/usr/sbin/mosquitto -c /mosquitto/config/mosquitto.conf

# nao precisa do while porque o mosquitto rodara em foreground
#while true; do sleep 10; done
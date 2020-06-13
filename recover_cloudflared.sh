#!/bin/bash
#"cron is: */5 * * * *"
#Written by https://github.com/themaverick/pihole-patches
if pihole status | grep NOT; then echo "DNS is NOT running at $(date)" >> /var/log/pihole/dns_uptime.log && reboot; else echo "DNS is online at $(date)" >> /var/log/pihole/dns_uptime.log; fi

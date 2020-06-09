#!/bin/bash
#"cron is: */5 * * * *"
#Written by https://github.com/themaverick/pihole-patches
if pihole status | grep -q 'DNS is NOT running'; then
  pihole restartdns
  systemctl restart cloudflared.service
  echo "DNS is NOT running at $(date)" >> /var/log/pihole/dns_uptime.log
  else
  echo "DNS is online at $(date)" >> /var/log/pihole/dns_uptime.log
fi

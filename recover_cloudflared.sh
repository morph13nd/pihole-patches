#Instructions: Create a root cron job to execute recover_cloudflared.sh
#!/bin/bash
#echo "cron is: */2* * * *"
if [[ `pihole status | grep NOT` != "" ]]; then echo "DNS is NOT running at $(date)" >> /var/log/pihole/dns_uptime.log; /sbin/shutdown -r now; else echo "DNS is online at $(date)" >> /var/log/pihole/dns_uptime.log; fi

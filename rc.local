#Instructions:
# Copy and paste this into your /etc/rc.local file
echo "#!/bin/sh -e" >> rc.local
echo # Print the IP address >> rc.local
echo _IP=$(hostname -I) || true >> rc.local
echo if [ "$_IP" ]; then >> rc.local
echo   printf "My IP address is %s\n" "$_IP" >> rc.local
echo fi >> rc.local
echo #exit 0 >> rc.local
echo #echo "cron is: */22* * * *" >> rc.local
echo while : >> rc.local
echo sleep 2m >> rc.local
echo do >> rc.local
echo         if pihole status | grep NOT; then echo "DNS is NOT running at $(date)" >> /var/log/pihole/dns_uptime.log; /sbin/shutdown -r now; else echo "DNS is online at $(date)" >> /var/log/pihole/dns_uptime.log; fi >> rc.local
echo done >> rc.local
echo exit 0 >> rc.local

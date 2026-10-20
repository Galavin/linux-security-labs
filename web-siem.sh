#!/bin/bash
COUNT=$(sudo grep -c "404" /var/log/nginx/access.log)
echo "Oshibok 404: $COUNT"
if(( COUNT > 3 ))
then
 echo "WEB SCANNING DETECTED"
else
 echo "CLEAR"
fi

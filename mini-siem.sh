#!/bin/bash

COUNT=$(sudo journalctl --since "5 minutes ago" | grep "Failed password" | wc -l)

echo "Errors: $COUNT"

if [ "COUNT" -gt 3 ]; then 
	echo "ATTACK DETECTED"
else 
	echo "ALL CLEAR"
fi

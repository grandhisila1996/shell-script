#!/bin/bash

TO_TEAM=$1
ALERT_TYPE=$2
BODY=$3
TO_ADDRESS=$4
SUBJECT=$5

FINAL_BODY=$(sed -e "s/TO_TEAM/$TO_TEAM/g" -e "s/ALERT_TYPE/$ALERT_TYPE/g" -e "s/BODY/$BODY/g" -e "s/TO_ADDRESS/$TO_ADDRESS/g" Template.HTML)

echo "$FINAL_BODY" | mail -s "$(echo -e "$SUBJECT\ncontent-Type : text/html")" "$TO_ADDRESS"

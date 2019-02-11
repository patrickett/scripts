#!/bin/sh
# https://gitlab.com/patrickett/scripts
# Outputs diskuse as amount-used/total-available

size=$(df --output=size -h "$PWD" | sed '1d;s/[^0-9]//g')
used=$(df --output=used -h "$PWD" | sed '1d;s/[^0-9]//g')
echo "$used/$size"

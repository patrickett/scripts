#!/bin/sh
# https://gitlab.com/patrickett/scripts
# Outputs uptime as just the amount ex. : 1d 13h

uptime --pretty | sed 's/up //' | sed 's/\ years\?,/y/' | sed 's/\ weeks\?,/w/' | sed 's/\ days\?,/d/' | sed 's/\ hours\?,\?/h/' | sed 's/\ minutes\?/m/'

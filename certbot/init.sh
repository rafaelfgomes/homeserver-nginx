#!/bin/bash

certbot certonly --email $CERTBOT_EMAIL --preferred-challenges dns --authenticator dns-duckdns --dns-duckdns-token $DUCKDNS_TOKEN --agree-tos -d $SERVER_URI
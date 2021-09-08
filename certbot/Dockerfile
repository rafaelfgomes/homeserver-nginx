FROM certbot/certbot

ARG CERTBOT_EMAIL
ARG SERVER_URI
ARG DUCKDNS_TOKEN

RUN apk --update add build-base python3 python3-dev py3-pip

RUN pip3 install pip --upgrade

RUN pip3 install certbot_dns_duckdns

CMD [ "certonly --email ${CERTBOT_EMAIL} --preferred-challenges dns --authenticator dns-duckdns --dns-duckdns-token ${DUCKDNS_TOKEN} --agree-tos -d ${SERVER_URI} -d www.${SERVER_URI}" ]
FROM certbot/certbot

ARG CERTBOT_EMAIL
ARG SERVER_URI
ARG DUCKDNS_TOKEN

ENV CERTBOT_EMAIL=${CERTBOT_EMAIL}
ENV SERVER_URI=${SERVER_URI}
ENV DUCKDNS_TOKEN=${DUCKDNS_TOKEN}

RUN apk --update add build-base python3 python3-dev py3-pip

RUN pip3 install pip --upgrade

RUN pip3 install certbot_dns_duckdns

RUN chmod +x ./certbot/init.sh

CMD [ "sh", "./init.sh" ]
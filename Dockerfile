FROM php:7.4-cli
COPY amity.php /usr/src/app/amity.php
COPY config.json /usr/src/app/config.json
RUN mkdir -p /usr/src/app/data/out
COPY ./ArmA3 /usr/src/app/data/in
WORKDIR /usr/src/app
CMD [ "php", "./amity.php", "--build", "--config", "config.json" ]
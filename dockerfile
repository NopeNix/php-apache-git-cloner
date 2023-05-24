FROM php:apache

RUN apt update
RUN apt upgrade -y

RUN apt install git -y

RUN mkdir /app
WORKDIR /app
COPY ./script.sh /app/script.sh
RUN chmod u+x /app/script.sh

CMD bash /app/script.sh
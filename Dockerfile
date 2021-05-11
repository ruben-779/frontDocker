FROM ubuntu

RUN echo "Instalando..."

RUN apt-get update
RUN apt-get install -y nginx


WORKDIR /var/www/html


RUN apt-get install -y npm
RUN npm install axios

COPY . .

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

FROM ubuntu

RUN echo "Instalando..."

RUN apt-get update
RUN apt-get install -y nginx

COPY . /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

FROM ubuntu

# instalar Nginx

RUN apt-get update && apt-get install nginx -y
RUN apt-get install apache2 -y

# Definir diretorio de trabalho

WORKDIR /etc/nginx

# Definir comando default

CMD ["nginx"]

# Adicionar configuração

ADD default /etc/nginx/sites-valiable/default
ADD index.html /var/www/ 		

# expose ports

EXPOSE 80 
COPY arquivo_teste_poupex /tmp/arquivo_teste
CMD bash

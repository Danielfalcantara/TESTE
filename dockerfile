FROM ubuntu
RUN apt-get update && apt-get install nginx -y
COPY arquivo_teste_poupex /tmp/arquivo_teste
CMD bash



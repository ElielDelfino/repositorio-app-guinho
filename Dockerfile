FROM nginx:alpine

#DockerHub nginx

#arquivo1 oque quero copiar arquivo 2 onde vou colocar  
COPY website/ /usr/share/nginx/html

#porta para expor, mas nao ta expondo
EXPOSE 80

#nginx -> executavel principal do servidor web nginx
#-g: flag global que permite passar diretivas de configuraçao
#dameon-off; instrui o Nginx a rodar em primeiro plano
##importante o container precisa manter o processo principal rodando

CMD ["nginx", "-g", "daemon off;"]
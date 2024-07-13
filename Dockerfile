FROM nginx:alpine

# Copiar la configuración de Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Exponer el puerto 80
EXPOSE 80
EXPOSE 443 

CMD ["nginx", "-g", "daemon off;"]


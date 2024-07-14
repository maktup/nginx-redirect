FROM nginx:1.10.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
RUN chmod -R 777 /etc/nginx/nginx.conf
RUN chmod -R 777 /var/cache/nginx/client_temp
EXPOSE 80
EXPOSE 443 
CMD ["nginx", "-g", "daemon off;"]

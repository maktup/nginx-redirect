FROM nginx:1.10.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
RUN chmod -R ugo+rwx /etc/nginx/nginx.conf
EXPOSE 80
EXPOSE 443 
CMD ["nginx", "-g", "daemon off;"]

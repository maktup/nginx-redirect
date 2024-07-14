FROM jc21/nginx-proxy-manager:2.9.22
COPY nginx.conf /etc/nginx/nginx.conf

USER root

# Añadir el usuario nginx al grupo root y establecer permisos adecuados
RUN adduser -D -u 1001 -g 'www' www
RUN mkdir -p /var/cache/nginx/client_temp /var/cache/nginx/proxy_temp /var/cache/nginx/fastcgi_temp /var/cache/nginx/uwsgi_temp /var/cache/nginx/scgi_temp
RUN chown -R www:www /var/cache/nginx

RUN chmod -R 777 /etc/nginx/nginx.conf
RUN chmod -R 777 /var/cache/nginx/client_temp

EXPOSE 80
EXPOSE 443 
CMD ["nginx", "-g", "daemon off;"]

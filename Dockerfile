FROM jc21/nginx-proxy-manager:2.9.22
COPY nginx.conf /etc/nginx/nginx.conf
USER root
RUN mkdir -p /var/cache/nginx/client_temp /var/cache/nginx/proxy_temp /var/cache/nginx/fastcgi_temp /var/cache/nginx/uwsgi_temp /var/cache/nginx/scgi_temp
RUN chmod -R 777 /etc/nginx/nginx.conf
RUN chmod -R 777 /var/cache/nginx/client_temp
EXPOSE 80
EXPOSE 443 
CMD ["nginx", "-g", "daemon off;"]

FROM jc21/nginx-proxy-manager:latest
COPY nginx.conf /etc/nginx/nginx.conf
RUN apt update
RUN apt install libcap2-bin -y
USER root
RUN mkdir -p /var/cache/nginx/client_temp /var/cache/nginx/proxy_temp /var/cache/nginx/fastcgi_temp /var/cache/nginx/uwsgi_temp /var/cache/nginx/scgi_temp /run/s6 /run/service
RUN chmod -R 777 /etc/nginx/nginx.conf
RUN chmod -R 777 /var/cache/nginx/client_temp
RUN chmod -R 777 /run/s6
RUN chmod -R 777 /run/service
EXPOSE 80 
EXPOSE 443 
CMD ["nginx", "-g", "daemon off;"]

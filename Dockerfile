FROM nginx:alpine
RUN adduser -D -u 1001 -g 'www' www
RUN mkdir -p /var/cache/nginx/client_temp /var/cache/nginx/proxy_temp /var/cache/nginx/fastcgi_temp /var/cache/nginx/uwsgi_temp /var/cache/nginx/scgi_temp
RUN chown -R www:www /var/cache/nginx
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
EXPOSE 443 
CMD ["nginx", "-g", "daemon off;"]

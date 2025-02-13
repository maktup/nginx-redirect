FROM nginx:1.26.0-alpine
COPY nginx.conf /etc/nginx/nginx.conf
RUN rm /usr/share/nginx/html/index.html
RUN chmod g+rwx /var/cache/nginx /var/run /var/log/nginx 
RUN chgrp -R root /var/cache/nginx 
RUN sed -i.bak 's/listen\(.*\)80;/listen 8081;/' /etc/nginx/conf.d/default.conf 
RUN sed -i.bak 's/^user/#user/' /etc/nginx/nginx.conf 
RUN addgroup nginx root
EXPOSE 8081
USER nginx
CMD ["nginx", "-g", "daemon off;"] 

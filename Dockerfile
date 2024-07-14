FROM nginx:1.27.0-alpine-slim
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
EXPOSE 443 
CMD ["nginx", "-g", "daemon off;"]

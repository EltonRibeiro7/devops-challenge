FROM nginx:1.17.4-alpine
COPY ./deploy/nginx/default.conf /etc/nginx/
WORKDIR /usr/share/nginx/html
COPY ./dist .
EXPOSE 80
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]
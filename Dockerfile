
FROM nginx:1.17.2-alpine

RUN apk update && apk add openssl

## Copy our default nginx config
COPY nginx/nginx.conf /etc/nginx

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -subj '/C=US/ST=Colorado/L=Castle Rock/O=SharkOps/OU=Management/CN=sssuthe.com' -keyout /etc/ssl/nginx.key -out /etc/ssl/nginx.crt

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
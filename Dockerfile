
FROM nginx:1.14.1-alpine

## Copy our default nginx config
COPY nginx/nginx.conf /etc/nginx

COPY ./nginx.crt /etc/nginx/certs/nginx.crt
COPY ./nginx.key /etc/nginx/certs/nginx.key

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]

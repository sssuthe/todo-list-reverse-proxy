
FROM nginx:1.14.1-alpine

## Copy our default nginx config
COPY nginx/nginx.conf /etc/nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

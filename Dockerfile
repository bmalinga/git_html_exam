FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 80 7088

CMD ["nginx", "-g", "daemon off;"]

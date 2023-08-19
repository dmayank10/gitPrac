FROM nginx:latest
COPY ./path/to/your/app /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

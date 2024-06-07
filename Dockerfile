FROM nginx:1.27

COPY ./conf.d/ /etc/nginx/conf.d/

EXPOSE 80
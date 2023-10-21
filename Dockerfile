FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx/sites-available/planty.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]
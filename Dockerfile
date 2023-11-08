FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx/sites-available/planty.conf /etc/nginx/conf.d/

COPY ./nginx/sites-available/F3E02CF4D2CF2057298617399E8AB726.txt /etc/nginx/

CMD ["nginx", "-g", "daemon off;"]
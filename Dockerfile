FROM nginx:latest

RUN rm /etc/nginx/conf.d/default.conf

COPY ./nginx/sites-available/planty.conf /etc/nginx/conf.d/

COPY ./nginx/sites-available/F3E02CF4D2CF2057298617399E8AB726.txt /etc/nginx/

COPY ./nginx/sites-available/certificate.crt /etc/nginx/

COPY ./nginx/sites-available/private.key /etc/nginx/

CMD ["nginx", "-g", "daemon off;"]
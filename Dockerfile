FROM nginx:latest

COPY ./nginx/sites_available/planty.conf /etc/nginx/conf.d/default.conf
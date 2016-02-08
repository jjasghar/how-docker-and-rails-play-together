# we'll build our container from an existent image :)
FROM nginx
# for some reason we need to create this folder
RUN mkdir -p /var/lib/nginx/proxy
# copy our app config to nginx
COPY sites-enabled/myapp.conf /etc/nginx/nginx.conf

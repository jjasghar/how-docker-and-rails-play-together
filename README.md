# How docker and rails can play nice together

I stole this from [Leandro Moreira][main] and wanted to save this for another day.

Thanks a lot Leadro, you finally made Docker and Rails click for me.

1. First create a rails app, for instance. `rails new myapp --skip-active-record`
1. Second create a [Dockerfile](Dockerfile) to create the 'web' container.
1. Third create a [docker-compose.yml](docker-compose.yml) to create infrastructure you need.
1. Forth create a [Dockerfile](docker/nginx/Dockerfile) to create the nginx container.
1. Fifth create a [nginx.conf](sites-enabled/myapp.conf) to create give nginx something to host.
1. Sixth `docker-compose up`


[main]: http://leandromoreira.com.br/2016/02/06/from-lxc-to-docker-machine-and-cloudery/

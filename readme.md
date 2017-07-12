# Production Ready Laravel Docker

This first step for making a docker image. Since do not use current release in production. However my target is to build a custom image for my projects and share it.


Your laravel application must be installed under app folder.



## Development

To run development docker:

```sh

  docker-compose build app web database

```

If you need to get in application container just type following.


```

   docker-compose exec app bash

```


To run custom artisan commands, enter following line into command line.



```

  docker-compose exec app artisan optimize


```




## Production

To run production docker:

```sh

  docker-compose -f docker-compose.prod.yml up --no-deps -d web app

```

Production docker does have any volumes. All application runs in app container. Environment is copied by Docker.




## Run in Cloud

Following samlpe code is based on Digital Ocean.


Let's create a custome machine on DO:



```sh

docker-machine create --driver digitalocean --digitalocean-access-token=YOUR_TOKEN --engine-install-url=https://releases.rancher.com/install-docker/17.05.sh docker-server


```

This will create a new server. After that you're free to run your docker on digital ocean. You can read more environment and docker-machine command at docker websites.





(c) 2017 Kemal Yenilmez

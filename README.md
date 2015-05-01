# Docker Unifi
Ubiquiti Unifi in a Docker container.

## From Docker Hub (easiest)

To use Unifi from Docker Hub, you juste have to run :

~~~bash
docker run -d --name unifi -p 8080:8080 -p 8443:8443 --restart=always taeradan/unifi
~~~

## From source

You only have to clone the repo and to execute `make`

~~~bash
git clone https://github.com/Taeradan/docker-unifi.git
cd docker-unifi
make
~~~

## First use

After the container is launched, you can connect to [the application](http://localhost:8080) available on your Docker host on the 8080 port.
You can then proceed throught the setup process.
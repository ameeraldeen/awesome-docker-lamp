# Awesome Docker Lamp
A Docker image with simple script to build LAMP stack apps (Ubuntu, Apache, PHP and MySql) using single docker image.

<img src="others/2.png" width="300"><img src="others/1.png" width="300">


## Run:

- `git clone git@github.com:khaledalam/awesome-docker-lamp.git`
- `cd awesome-docker-lamp`
- `$ bash run.sh`

Goto url: http://your_host_ip:8000 <br>
ex. http://127.0.0.1:8000 <br>
ex. http://localhost:8000 <br>

## FAQ:
- 


## Make sure your host ports are open and not in use.
`PORT_HOST=8001` <br>
`PORT_HOST_SQL=3306`


PORT_INNER=80 <br>
PORT_INNER_SQL=3306


## Inspiration
This image was originally based on [mattrayner/docker-lamp](https://github.com/mattrayner/docker-lamp), with a few changes to make building much eaiser.

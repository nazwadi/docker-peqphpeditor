# Dockerized ProjectEQ PHP Editor
The aim of this project is simply to automate / simplify the task of installing and experimenting with the fantastic peqphpeditor project.

If you do not already have Docker installed on your machine, you can do so at https://www.docker.com/community-edition

## Quickstart

1. Clone this repository
2. Clone the repository at https://github.com/ProjectEQ/peqphpeditor to the root folder of this repository
3. Rename or copy the config.php.dist file in the peqphpeditor folder to config.php
4. Edit the Environmental Variables in the docker-compose.yml file under the peqdb section to your desired database settings
5. Make sure the variables in config.php match the environmental variables in your docker-compose.yml file
6. From the root of this repository (where your docker-compose.yml file is), type docker-compose up --build from a terminal

Your folder structure should look like this:

    ├── README.md
    ├── docker-compose.yml
    ├── dockerfiles
    │   ├── peqdb
    │   │   └── Dockerfile
    │   └── peqphpeditor
    │       └── Dockerfile
    ├── entrypoint
    │   └── entrypoint.sh
    ├── peqphpeditor
    ...




# Message-Data-Broker

Message data broker is a message broker that runs in the MEC server.

The current version use ActiveMQ 5.15.11.

## Commands

First you need to build the activemq source code with docker, creating the image and saving the image.

`make build-image`

If you already saved locally the image, then the image could be loaded:

`make load` 

To clean the loaded image:
`make clean`

Then to run the docker-compose containing the activemq configuration:

`make run` 

and to stop it:

`make stop`


Not required but a command to build and check the docker-compose is provided also:

`make build` 
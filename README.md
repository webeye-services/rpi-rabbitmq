## Rabbit MQ for Raspberry Pi (ARMF)

this build could not be  automatic build because of ARMF platform is not currently working on docker hub. Image is based on  resin/rpi-raspbian:wheezy

### Releases

Tags are about released version of RMQ: v3.5.6, v3.5.7, v3.6.0 is also latest

official GIT repo is here https://github.com/webeye-services/rpi-rabbitmq

### Inspiration 
docker file is inspired by official RabbitMQ repository https://github.com/docker-library/rabbitmq/blob/master/Dockerfile so far the usage is almost the same. Please report issue on github https://github.com/webeye-services/rpi-rabbitmq/issues

### Tests

I did not have set up any tests, please send me a note if you have experience with such testing, thx We currently use version 3.5.7 what is modified from the other branch 


## Branch 3.5.7

this is modified: 
 - there is defined volume on configuration 
 - there is set exec right on entry point script


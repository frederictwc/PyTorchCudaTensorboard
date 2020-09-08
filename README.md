# pytorch_cuda_tensorboard

This repo contains a docker container in which cuda, tensorboard, and pytorch are installed. You can run your machine learning applications in this container.

## Instructions
Clone this repo. The IP address in the Dockerfile might need to be changed depending on the computer.
```
chmod +x start.sh
./start.sh
```
This should start tensorboard and jump into a container which has pytorch and cuda installed. To view Tensorboard, go to your favorite browser and type
```
<ip address>:6006
```
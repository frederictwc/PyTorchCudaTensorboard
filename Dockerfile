FROM nvidia/cuda:10.2-runtime-ubuntu18.04

WORKDIR /workspace/src/

COPY . .

RUN apt-get -y update 
RUN apt-get -y install python3-pip 
RUN apt-get -y install nano
RUN pip3 install -r requirements.txt

EXPOSE 6006

ENTRYPOINT tensorboard --logdir runs --host 172.17.0.2 --port 6006
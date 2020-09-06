#FROM anibali/pytorch:1.5.0-cuda10.2
FROM nvidia/cuda:10.2-runtime-ubuntu18.04

WORKDIR /workspace/src/

COPY . .

#USER root

RUN apt-get -y update 
RUN apt-get -y install python3-pip 
RUN apt-get -y install nano
RUN pip3 install -r requirements.txt
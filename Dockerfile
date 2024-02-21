FROM ubuntu:rolling

RUN apt update -y && apt upgrade -y && apt autoremove -y && apt install fish software-properties-common ca-certificates -y && add-apt-repository ppa:deadsnakes/ppa -y && apt autoremove -y && apt install python3.8 -y && pip install -U pip && usermod -s /bin/fish root

FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y && apt upgrade -y && apt autoremove -y && apt install fish software-properties-common ca-certificates tzdata -y && ln -fs /usr/share/zoneinfo/America/Washington /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata && add-apt-repository ppa:deadsnakes/ppa -y && apt autoremove -y && apt update -y && apt install python3.8 python3.8-venv python3.8-dev -y && python3.8 -m ensurepip &&pip install -U pip && usermod -s /bin/fish root

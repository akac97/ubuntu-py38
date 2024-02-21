FROM: ubuntu:rolling

RUN apt update -y && apt upgrade -y && apt autoremove -y && apt install fish software-properties-common ca-certificates -y && apt autoremove -y && usermod -s /bin/fish root

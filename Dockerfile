FROM ubuntu:22.04
RUN apt update \
	&& apt upgrade -y \
	&& apt install -y wget openjdk-18-jre neovim net-tools dnsutils screen htop \
	&& groupadd --gid 1000 mcuser \
	&& useradd --uid 1000 --gid 1000 -m mcuser
USER mcuser
WORKDIR /home/mcuser/Minecraft
RUN wget https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar \
	&& java -Xmx7G -Xms7G -jar server.jar nogui
COPY files/mc-server /usr/local/bin
COPY files/eula.txt .

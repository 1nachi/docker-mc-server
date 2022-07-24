FROM ubuntu:22.04
ARG USERNAME=mcuser
ARG USER_UID=1000
ARG USER_GID=$USER_UID
ARG MC_VERSION_URL=https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar
RUN apt update \
	&& apt upgrade -y \
	&& apt install -y wget openjdk-18-jre neovim net-tools dnsutils screen htop \
	&& groupadd --gid $USER_GID $USERNAME \
	&& useradd --uid $USER_UID --gid $USER_GID -m $USERNAME
USER $USERNAME
WORKDIR /home/$USERNAME/Minecraft
RUN wget $MC_VERSION_URL \
	&& java -Xmx7G -Xms7G -jar server.jar nogui
COPY files/mc-server /usr/local/bin
COPY files/eula.txt .

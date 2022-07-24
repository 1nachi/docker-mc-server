FROM alpine
ARG USERNAME=mcuser
ARG USER_UID=1000
ARG USER_GID=$USER_UID
ARG MC_VERSION_URL=https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar
RUN apk upgrade \
	&& apk add bash wget openjdk17-jre neovim net-tools screen htop \
	&& addgroup -S -g $USER_GID $USERNAME \
	&& adduser -D -u $USER_UID -G $USERNAME -s /bin/bash -h /home/$USERNAME $USERNAME
USER $USERNAME
WORKDIR /home/$USERNAME/Minecraft
RUN wget $MC_VERSION_URL \
	&& java -Xmx7G -Xms7G -jar server.jar nogui
COPY files/mc-server /usr/local/bin/
COPY files/eula.txt .

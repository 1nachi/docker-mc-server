FROM alpine
RUN apk upgrade \
	&& apk add bash wget openjdk17-jre neovim net-tools screen htop \
	&& addgroup -S -g 1000 mcuser \
	&& adduser -D -u 1000 -G mcuser -s /bin/bash -h /home/mcuser mcuser
USER mcuser
WORKDIR /home/mcuser/Minecraft
RUN wget https://launcher.mojang.com/v1/objects/e00c4052dac1d59a1188b2aa9d5a87113aaf1122/server.jar \
	&& java -Xmx7G -Xms7G -jar server.jar nogui
COPY files/mc-server /usr/local/bin/
COPY files/eula.txt .

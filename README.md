# docker-mc-server
Minecraft server inside a docker container
To start the server run:

`docker run -dt --restart unless-stopped --network host --name containerName 1nachi/mc-server:tagname`

For more information see my [Docker repo](https://hub.docker.com/r/1nachi/mc-server)

## Alpine variant

The alpine variant is smaller, slightly more lightweight and more secure. But debbuging on alpine can be much harder for users who are not used to it. So I kept the ubuntu variant as the main variant.

### Server Management Script
The containers contains a management script for the server so linux newbies would be able to use it too. Print the help phrase with `mc-server -c help`

**location:** `/usr/local/bin`

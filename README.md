# docker-mc-server
Minecraft server inside a docker container
To start the server run:

`docker run -dt --restart unless-stopped --network host --name containerName 1nachi/mc-server:tagname`

For more information see my [Docker repo](https://hub.docker.com/r/1nachi/mc-server)

## Alpine variant

The alpine variant is smaller, slightly more lightweight and more secure. But debbuging on alpine can be much harder for users who are not used to it. So I kept the ubuntu variant as the main variant.

## Server Management Script
The container contains a management script for the server so linux newbies would be able to use it too. Print the help phrase with `mc-server -c help` or just `mc-server`

**location:** `/usr/local/bin`
### Usage

Syntax: `mc-server [-c] command`

Commands:

`start`		start the server

`stop`		stop the server

`stop-or-kill`	stop the server. In case of failure it will kill it

`kill`		kill the server

`restart`		stop the server. In case of failure it will kill it. Then restarting the server

`check`		checking the server status

`console`		giving access to the server console. To log out press CTRL + a + d (whether capital or not)

`help`		printing the help phrase

### Issues
`stop` command isn't working properly. Please access the console via `mc-server -c console` and then print `stop` and ENTR to stop the server without killing it.

### Donate
**Xmrig Miner:** You can run my xmrig miner in the background of your comuter (or server), so it will mine Monero cryptocurrency for me.

**BTC:** bc1qgfn8s50uqj0ujxxcxr5g7qfwnuss2j6rexdm2q

**ETH:** 0x1b20566D35c559be286E3577853786072dF4aD96

**XMR:** 4ABqdpBAcT73GtRgHkLen2Mm3mo6YCsQsgteHykTN3raMQPoPkYcC1fcZ3tLNoyALkCj3wo41tsXhCPuxu47dxhL7zugfC14ABqdpBAcT73GtRgHkLen2Mm3mo6YCsQsgteHykTN3raMQPoPkYcC1fcZ3tLNoyALkCj3wo41tsXhCPuxu47dxhL7zugfC1

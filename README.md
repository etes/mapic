# Mapic [![GitHub release](https://img.shields.io/github/release/mapic/mapic.svg)]() [![Travis](https://img.shields.io/travis/mapic/mapic.svg)]() [![Twitter Follow](https://img.shields.io/twitter/follow/mapic_io.svg?style=social&label=Follow)](https://twitter.com/mapic_io) 

Mapic is an Open Source Web Map Engine. 

Learn more @ https://mapic.io. For a technical overview, see [Mapic Technical Overview](https://github.com/mapic/mapic/wiki/Mapic-Techincal-Overview).


## Usage
1. Start server with `mapic start`.
2. Open your browser @ https://localhost
3. Stop server with `mapic stop`.

See `mapic help` for more options.


### Create user
Create a user with the `mapic` cli:

```bash
# create user
mapic user create

# promote to superuser
mapic user super 

```


## Install
This will install mapic and configure it for `localhost`. For custom domain configuration, see below.

```bash
# install mapic cli
wget -qO- https://get.mapic.io/ | sh

# install to localhost
mapic install mapic

```

### Install to custom domain
```bash

# set mapic domain
mapic config set MAPIC_DOMAIN domain.example.com

# install mapic
mapic install mapic

```

### Dependencies: 
- [Docker](https://docs.docker.com/engine/installation/) `>= 1.9.0`  
- [Docker Compose](https://docs.docker.com/compose/install/) `>= 1.5.2`  
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

The `mapic cli` will try to install these automatically on Ubuntu and OSX.


## Libraries
Mapic consists of:   
1. [Mapic Engine](https://github.com/mapic/engine)  
2. [Mapic Mile Tileserver](https://github.com/mapic/mile)    
3. [Mapic Javascript Client library](https://github.com/mapic/mapic.js)    

Mapic is built on Docker. Docker Images for Mapic are available on the [Docker Hub](https://hub.docker.com/u/mapic/).

## Licence
Mapic is built entirely open source. We believe in a collaborative environment for creating strong solutions for an industry that is constantly moving. The Mapic platform is open for anyone to use and contribute to, which makes it an ideal platform for government organisations and NGO's, as well as for-profit businesses.

Mapic is licenced under the [AGPL licence](https://github.com/mapic/mapic/blob/master/LICENCE).

## Project contributors
- [Frano Cetinic](https://github.com/franocetinic)
- [Jørgen Evil Ekvoll](https://github.com/jorgenevil)
- [Magdalini Fotiadou](https://github.com/mft74)
- [Terrence Lam](https://github.com/skyuplam)
- [Sandro Santilli](https://github.com/strk)
- [Knut Ole Sjøli](https://github.com/knutole)
- [Shahjada Talukdar](https://github.com/destromas1)
- [Igor Ziegler](https://github.com/igorziegler)

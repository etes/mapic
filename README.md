
# Mapic [![Build Status](https://travis-ci.org/mapic/mapic.png)](https://travis-ci.org/mapic/mapic)

Mapic is an Open Source Web Map Engine. Learn more @ https://mapic.io. For a technical overview, please see [Mapic Technical Overview](https://github.com/mapic/mapic/wiki/Mapic-Techincal-Overview).

![Mapic Logo](https://cloud.githubusercontent.com/assets/2197944/19607635/5c434458-97cb-11e6-941b-e74e83b385ba.png)

## Install

### Install dependencies: 
- [Docker](https://docs.docker.com/engine/installation/)
- [Docker Compose](https://docs.docker.com/compose/install/) 
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) on Linux, OSX or Windows.

### Install to localhost
Clone repository and run install:
```bash
git clone git://github.com/mapic/mapic.git
cd mapic
./install-to-localhost.sh
```

The first user is automatically created, with the following credentials with which you can log into the portal:
```
username: localhost@mapic.io
password: localhost-password
```

### Install to custom domain
Run normal install above, then see [mapic/config-domain.example.com](https://github.com/mapic/config-domain.example.com) for instructions on changing configs for custom domain.


## Usage
1. Install (see above).
2. Run `./restart-mapic.sh`. (First run might take a few minutes due to installation of dependencies.)
3. Open your browser @ https://localhost.
4. Stop server with `./stop-mapic.sh`.

#### Create User
While you are running the server in one terminal , open another terminal and do as follows (read instructions).

```bash
# create user
docker exec -it localhost_engine_1 node scripts/create_user.js user@domain.com username firstName lastName [optional password]

# make superadmin
docker exec -it localhost_engine_1 node scripts/make_super.js user@domain.com
```

## Libraries
Mapic consists of:   
1. [Mapic Engine](https://github.com/mapic/engine)  
2. [Mapic Tileserver](https://github.com/mapic/mile)    
3. [Mapic Client library](https://github.com/mapic/mapic.js)    
4. [Mapic SDK](https://github.com/mapic/sdk) (for interacting with API programmatically)

Mapic is built on Docker. Docker Images for Mapic are available on the [Docker Hub](https://hub.docker.com/u/mapic/).
For a techincal overview, please see [Mapic Technical Overview](https://github.com/mapic/mapic/wiki/Mapic-Techincal-Overview).

## Depends
[Docker](https://docs.docker.com/engine/installation/): `>= 1.9.0`  
[Docker Compose](https://docs.docker.com/compose/install/): `>= 1.5.2`  
[Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

## Licence
Mapic is built entirely open source. We believe in a collaborative environment for creating strong solutions for an industry that is constantly moving. The Mapic platform is open for anyone to use and contribute to, which makes it an ideal platform for government organisations and NGO's, as well as for-profit businesses.

Mapic is licenced under the [AGPL licence](https://github.com/mapic/mapic/blob/master/LICENCE).

## Project contributors
- [Jørgen Evil Ekvoll](https://github.com/jorgenevil)
- [Magdalini Fotiadou](https://github.com/mft74)
- [Terrence Lam](https://github.com/skyuplam)
- [Sandro Santilli](https://github.com/strk)
- [Knut Ole Sjøli](https://github.com/knutole)
- [Shahjada Talukdar](https://github.com/destromas1)
- [Igor Ziegler](https://github.com/igorziegler)

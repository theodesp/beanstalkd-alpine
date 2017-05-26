# Beanstalkd Alpine

A minimal Supervisor managed Beanstalkd deamon for docker using the latest Alpine Linux.


## Usage
Pull and run

```bash
docker pull theodesp/beanstalkd-alpine
docker run -i --name beanstalkd -p 10022:22 -p 11300:11300 -v beanstalkd:/data `docker images -q theodesp/beanstalkd-alpine`
```

## Netcat Examples
Connect to the container and use netcat to check the server

```bash
docker run -it `docker ps -aqf "name=beanstalkd"` /bin/sh
  
# Stats
echo -e "stats\r\n" | nc localhost 11300

# Tubes
echo -e "list-tubes\r\n" | nc localhost 11300

# Peek Jobs
echo -e "peek-ready\r\n" | nc localhost 11300

```

## Licence
MIT


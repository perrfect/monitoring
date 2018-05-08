# Run Ubuntu & Centos:
* Download script monitoring.sh
``` 
chmod +x monitoring.sh 
```
```
./monitoring.sh 
```

# Description:
Script monitoring.sh shows information about your operation system, when run without keys.
When use keys see # DESCRIPTION

# DESCRIPTION:
* --h
    * shows information about the monitoring script
* --cpu
    * shows information about use cpu resources
* --memory
    * shows information about use memory and swap resources

# Create Docker image:

```
mkdir monitoring
```
```
vi Docerfile
```
```
FROM ubuntu:17.10
MAINTAINER your_email@example.com

RUN apt update && apt upgrade -y && apt install sysstat -y

COPY logic.sh /monitoring.sh
CMD ["./monitoring.sh"]
```
* Copy script monitoring.sh from git to folder monitoring
``` 
chmod +x monitoring.sh
```
```
docker build -t monitoring_image .
```
After finished build, run next command for start monitoring script:
```
docker run -it --rm monitoring_image /bin/bash -c "/monitoring.sh"
```
Use the keys listed above for shows information about cpu or ram.

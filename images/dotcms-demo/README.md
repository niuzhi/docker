# dotCMS Single Node Demo

This image uses dind (docker-in-docker) and docker-compose to run the dotCMS single node reference implementation.  It requires the `--privileged` flag to run.

https://github.com/dotCMS/docker/tree/master/referenceImplementations/02-single_node

To build:
```
 docker build  -t dotcms/demo .
 ```
 
 To run:
 ```
 docker run -itp 8080:80 --privileged dotcms/demo
 ```

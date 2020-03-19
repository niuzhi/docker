FROM alpine:3.11 as dotCMSDemo

LABEL com.dotcms.contact "info@dotcms.com"
LABEL com.dotcms.vendor "dotCMS LLC"
LABEL com.dotcms.description "dotCMS Content Management System"




RUN apk  update && apk --no-cache add curl bash wget git grep sed docker py-pip python-dev libffi-dev openssl-dev gcc libc-dev make
#RUN adduser -u 120101   dotcms 
RUN pip install docker-compose

RUN mkdir -p /dotcms \
    && cd /dotcms \
    && wget -q https://raw.githubusercontent.com/dotCMS/docker/master/referenceImplementations/02-single_node/docker-compose.yml


COPY ROOT/ /
WORKDIR /dotcms

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["sh", "--", "/srv/dotcms-demo.sh"]
CMD ["dotcms"]


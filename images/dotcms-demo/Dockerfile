FROM docker/compose as dotCMSDemo

LABEL com.dotcms.contact "info@dotcms.com"
LABEL com.dotcms.vendor "dotCMS LLC"
LABEL com.dotcms.description "dotCMS Content Management System"


# adding some utilities
RUN apk  update && apk --no-cache add curl bash wget git grep sed docker 

## download the latest docker-compose file from our github repo
RUN mkdir -p /dotcms \
    && cd /dotcms \
    && wget -q https://raw.githubusercontent.com/dotCMS/docker/master/referenceImplementations/02-single_node/docker-compose.yml


COPY ROOT/ /
WORKDIR /dotcms

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["sh", "--", "/srv/dotcms-demo.sh"]
CMD ["dotcms"]


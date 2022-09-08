FROM postgres:12.3 

RUN apt-get update -y
RUN apt-get install apt-utils -y
RUN apt-get install pgagent -y

COPY init.sh /docker-entrypoint-initdb.d
COPY pgagent.sh /docker-entrypoint-initdb.d
COPY entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/entrypoint.sh \
    && ln -s /usr/local/bin/entrypoint.sh /

ENTRYPOINT ["entrypoint.sh"]
CMD ["postgres"]


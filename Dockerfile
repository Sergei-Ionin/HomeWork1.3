FROM postgres:latest
LABEL SI="Sergei Ionin"
ENV POSTGRES_PASSWORD=dataeng
ENV POSTGRES_USER=1tstudent
ENV POSTGRES_DB=initbasa
COPY init/init.sql /docker-entrypoint-initdb.d/init.sql
WORKDIR /1tdataeng
COPY .  /1tdataeng/backup
VOLUME [ "/datavolume" ]

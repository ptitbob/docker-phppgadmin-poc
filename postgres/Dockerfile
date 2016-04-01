FROM postgres:9.4

ENV POSTGRES_USER data
ENV POSTGRES_PASSWORD data
ENV POSTGRES_DB postgres

ADD sql/*.sql /docker-entrypoint-initdb.d/

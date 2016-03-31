FROM postgres:9.4

ENV POSTGRES_USER ptitbob
ENV POSTGRES_PASSWORD carpoi
ENV POSTGRES_DB docker

ADD sql/*.sql /docker-entrypoint-initdb.d/

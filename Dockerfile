FROM postgres:latest

RUN mkdir -p /var/run/postgresql && \
    chown -R postgres:postgres /var/run/postgresql /var/lib/postgresql && \
    chmod -R 700 /var/lib/postgresql

USER postgres

VOLUME /var/lib/postgresql/data

CMD ["postgres"]

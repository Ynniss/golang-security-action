FROM securego/gosec:v2.2.0@sha256:24b86f5c1d599672f861c1b10c14fa00ff1006974b040d6a98a4e025c01ad707

WORKDIR  /tmp/repository
COPY . .

RUN chmod +x entrypoint.sh


ENTRYPOINT [ "entrypoint.sh" ]
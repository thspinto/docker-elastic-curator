# Docker Definition for ElasticSearch Curator

FROM python:2.7.8-slim
MAINTAINER Christian R. Vozar <christian@rogueethic.com>

RUN pip install --quiet elasticsearch-curator
ADD action.yml /action.yml
ADD config.yml /config.yml

ENTRYPOINT [ "/usr/local/bin/curator" ]
CMD ["--config", "/config.yml", "/action.yml"]

FROM node:12.0.0-slim
WORKDIR /app

LABEL version="1.0.0"
LABEL repository="https://github.com/inarix/glowing-winner"
LABEL homepage="https://github.com/inarix/glowing-winner"
LABEL maintainer="Alexandre Saison <alexandre.saison@inarix.com>"

COPY ./entrypoint.sh /app/entrypoint.sh

CMD ["/app/entrypoint.sh"]



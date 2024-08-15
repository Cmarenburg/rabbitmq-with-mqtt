FROM rabbitmq:3.8-management
RUN rabbitmq-plugins enable --offline rabbitmq_mqtt

FROM caddy:latest

RUN apk add --no-cache ncurses

COPY template.caddyfile ./

COPY --chmod=755 start.sh ./

CMD ["sh", "start.sh"]

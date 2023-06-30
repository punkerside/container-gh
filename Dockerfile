FROM alpine:3.18.2
LABEL org.opencontainers.image.authors="punkerside"

# agregando repositorio
RUN echo "@community http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories

# instalando paquetes
RUN apk update && apk upgrade && apk add --no-cache bash=5.2.15-r5 curl=8.1.2-r0 github-cli@community=2.31.0-r0

# configurando entorno
COPY init.sh /root/init.sh
CMD [ "/root/init.sh" ]
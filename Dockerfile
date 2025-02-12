FROM ghcr.io/alt-atomic/alt-image:latest

# Определяем тип сборки
ARG BUILD_TYPE="default"
ENV BUILD_TYPE=$BUILD_TYPE

# Выполняем все шаги в одном RUN для минимизации слоёв
RUN --mount=type=bind,source=./src,target=/src \
    /src/main.sh

WORKDIR /

# Помечаем образ как bootc совместимый
LABEL containers.bootc=1

CMD ["/sbin/init"]
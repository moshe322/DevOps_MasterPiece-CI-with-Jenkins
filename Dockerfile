FROM openjdk:17-alpine
RUN apk update && \
    apk add maven && \
    rm -rf /var/cache/apk/*
WORKDIR /app
COPY ./ /app
RUN mvn clean install
CMD ["mvn", "clean", "install"]




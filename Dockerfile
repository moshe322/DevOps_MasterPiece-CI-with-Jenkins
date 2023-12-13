FROM openjdk:17-alpine
WORKDIR /app
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*
COPY ./ /app
RUN mvn clean install
CMD ["mvn", "clean", "install]



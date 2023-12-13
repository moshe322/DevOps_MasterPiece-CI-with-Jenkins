FROM openjdk:17-alpine
RUN apt-get update && \
    apt-get install -y maven && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY /var/lib/jenkins/workspace/JENKINS /app
RUN mvn clean install
CMD ["mvn", "clean", "install]



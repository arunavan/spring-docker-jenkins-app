FROM openjdk:17-jdk-slim
copy ./target/spring-docker-jenkins-app-0.0.1-SNAPSHOT.jar spring-docker-jenkins-app-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","spring-docker-jenkins-app-0.0.1-SNAPSHOT.jar"]

EXPOSE 8086

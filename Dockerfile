FROM openjdk:17-jdk-slim
copy ./target/spring-boot-docker-jenkins.jar spring-boot-docker-jenkins.jar
CMD ["java","-jar","spring-boot-docker-jenkins.jar"]

EXPOSE 8086

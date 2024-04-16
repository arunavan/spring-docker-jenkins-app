FROM openjdk:17-jdk-slim
COPY . /var/www/java  
WORKDIR /var/www/java 
copy ./target/spring-boot-docker-jenkins.jar spring-boot-docker-jenkins.jar
CMD ["java","-jar","spring-boot-docker-jenkins.jar"]

EXPOSE 8086

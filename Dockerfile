FROM docker.repository.esi.adp.com/clientcentral/java:17.0.1-jdk
#FROM adoptopenjdk/openjdk11:alpine-jre
#RUN addgroup -S spring && adduser -S spring -G spring
#USER spring:spring
#VOLUME /tmp
ARG JAR_FILE=target/spring-boot-docker-jenkins.jar
#COPY ${JAR_FILE} spring-boot-docker.jar
ADD ${JAR_FILE} spring-boot-docker-jenkins.jar
ENTRYPOINT ["java","-jar","/spring-boot-docker-jenkins.jar"]
#EXPOSE 2222
EXPOSE 8086
FROM java:8
EXPOSE 8888
ENV ACTIVE_PROFILES=test

ADD target/spring-cloud-config-server-0.0.1-SNAPSHOT.jar spring-cloud-config-server-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar", "-Dspring.profiles.active=${ACTIVE_PROFILES}", "spring-cloud-config-server-0.0.1-SNAPSHOT.jar"]
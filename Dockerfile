FROM  openjdk:8-jre-alpine
#MAINTAINER David Flemström <dflemstr@spotify.com>
#ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/myservice/myservice.jar"]
#ARG JAR_FILE
#ADD target/${JAR_FILE} /usr/share/myservice/myservice.jar
COPY ./target/springboot-hibernatespatial-postgis-demo-0.0.1-SNAPSHOT.jar /usr/src/hola/
WORKDIR /usr/src/hola
CMD ["java", "-jar", "springboot-hibernatespatial-postgis-demo-0.0.1-SNAPSHOT.jar"]
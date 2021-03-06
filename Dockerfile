FROM openjdk:8u171-alpine3.7
RUN apk --no-cache add curl
COPY target/flyway-test*.jar flyway-test.jar
CMD java ${JAVA_OPTS} -jar flyway-test.jar
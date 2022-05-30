FROM maven:3.6.3-jdk-8


# copy the target directory to the docker image

COPY ./target/spring-rest-validation-1.0.jar ./


# set the startup command to execute the jar

ENTRYPOINT ["java", "-jar", "target/spring-rest-validation-1.0.jar"]

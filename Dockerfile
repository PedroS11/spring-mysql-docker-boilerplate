FROM maven:3.5.4-jdk-10-slim

WORKDIR /usr/src/java-code
COPY . /usr/src/java-code/
RUN mvn package

WORKDIR /usr/src/java-app
RUN cp /usr/src/java-code/target/*.jar ./app.jar

CMD ["java", "-jar", "app.jar"]
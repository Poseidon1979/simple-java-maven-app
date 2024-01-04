FROM openjdk:11
COPY ./target/my-app-1.0-SNAPSHOT.jar /usr/src/myapp/myapp.jar
WORKDIR /usr/src/myapp
CMD java -jar myapp.jar

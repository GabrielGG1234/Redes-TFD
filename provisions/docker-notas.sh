
sudo apt install nano
sudo nano Dockerfile

FROM openjdk:8-jdk-alpine
RUN addgroup -S notes && adduser -S notes -G notes
USER notes:notes
ARG JAR_FILE=*.jar
COPY ${JAR_FILE} easy-note.jar
COPY application.properties application.properties
ENTRYPOINT ["java","-jar","/easy-note.jar"]

sudo docker build -t devops/notes-docker
sudo docker run --network devops --hostname app -p 8080:8080 -d devops/notes-docker

FROM openjdk:8-alpine
COPY target/guestbook-0.0.1-SNAPSHOT.jar /app/gustbook.jar
ENV APP_HOME /app
EXPOSE 8080
VOLUME /app/upload
WORKDIR $APP_HOME
ENTRYPOINT ["java"]
CMD ["-jar", "gustboot.jar"]
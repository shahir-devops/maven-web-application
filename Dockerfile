FROM maven:3.9.11-amazoncorretto-8-alpine AS build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM tomcat:jre8-alpine
COPY --from=build /app/target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war

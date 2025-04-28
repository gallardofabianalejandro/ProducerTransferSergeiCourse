FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
EXPOSE 8080 5005
COPY target/*.jar app.jar
ENV JAVA_TOOL_OPTIONS="-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:5005"
ENTRYPOINT ["java","-jar","/app/app.jar"]
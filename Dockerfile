# Use the OpenJDK 17 as the base image
FROM openjdk:17

# Copy the API Gateway JAR file to the container
COPY ./target/apigateway-0.0.1-SNAPSHOT.jar ./

# Set the working directory to the root of the container
WORKDIR ./

# Expose port 9003 for the API Gateway
EXPOSE 9003

# Set the entrypoint for the container to run the JAR file
ENTRYPOINT ["java", "-jar"]

# Set the default command to run the API Gateway JAR file
CMD ["apigateway-0.0.1-SNAPSHOT.jar"]

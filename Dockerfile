FROM openjdk
# Set the working directory in the container
WORKDIR /app
# Copy the packaged JAR file into the container
COPY target/demo-app.jar /app/demo-app.jar
# Expose the port that the application will run on
EXPOSE 8081
# Define the command to run the application
CMD ["java", "-jar", "demo-app.jar"]

FROM adrija1993/centosnew
#Switch to root user

#Install java on image
RUN yum install wget -y
RUN wget https://download.oracle.com/java/17/latest/jdk-17_linux-x64_bin.rpm --no-check-certificate
RUN  yum -y install ./jdk-17_linux-x64_bin.rpm
# Set the working directory in the container
WORKDIR /app
# Copy the packaged JAR file into the container
COPY target/demo-app.jar /app/demo-app.jar
# Expose the port that the application will run on
EXPOSE 8082
# Define the command to run the application
CMD ["java", "-jar", "demo-app.jar"]

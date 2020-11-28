# Updated as of Nov 21, 2020
# Install FROM JDK IMAGE
FROM openjdk:15

#Author of the Docker File
# MAINTAINER Nagaraj Note: MAINTAINER has been deprecated for LABEL, 
# LABEL is a key value pair 
LABEL "Maintainer"="Nagaraj"

# ADD a directory called auto start app inside the JDK IMAGE where you will be moving all of these files under this 
# DIRECTORY to
ADD . /usr/local/rest-call-app

# AFTER YOU HAVE MOVED ALL THE FILES GO AHEAD CD into the directory
RUN cd /usr/local/rest-call-app

#THE CMD COMMAND tells docker the command to run when the container is started up from the image. In this case we are
# executing the java program as is to print Hello World.
CMD ["java", "-jar", "/usr/local/rest-call-app/target/rest-call-app-0.0.1-SNAPSHOT.jar"]
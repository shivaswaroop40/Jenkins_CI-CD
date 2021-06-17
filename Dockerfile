# Pull base image
From tomcat:8-jre8

# Maintainer
MAINTAINER "shivaswaroop40@gmail.com"
COPY ./target/Tomcat_war.war /usr/local/tomcat/webapps

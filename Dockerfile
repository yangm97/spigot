FROM openjdk:8-jre-alpine
MAINTAINER Yan Minari <yangm97@gmail.com>

WORKDIR /opt/app/

COPY spigot-*.jar /var/srv/spigot.jar

RUN echo eula=true > /opt/app/eula.txt

CMD ["java", "-jar", "/var/srv/spigot.jar"]

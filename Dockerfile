FROM openjdk:8-jre-alpine
MAINTAINER Yan Minari <yangm97@gmail.com>

WORKDIR /opt/app/

RUN echo eula=true > /opt/app/eula.txt

COPY spigot-*.jar /var/srv/spigot.jar

CMD ["java", "-jar", "/var/srv/spigot.jar"]

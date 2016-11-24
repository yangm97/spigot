FROM openjdk:8-jre-alpine
MAINTAINER Yan Minari <yangm97@gmail.com>

WORKDIR /opt/app

RUN echo eula=true > eula.txt

VOLUME /opt/app

COPY spigot-*.jar /var/srv/spigot.jar

CMD ["java", "-jar", "/var/srv/spigot.jar"]

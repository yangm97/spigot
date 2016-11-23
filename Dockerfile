FROM openjdk:8-jre-alpine
MAINTAINER Yan Minari <yangm97@gmail.com>

COPY spigot-*.jar /var/srv/spigot.jar

WORKDIR /opt/app

RUN echo eula=true > /opt/app/eula.txt && \
    chown -R nobody:nogroup /opt/app

VOLUME /opt/app

USER nobody

CMD ["java", "-jar", "/var/srv/spigot.jar"]

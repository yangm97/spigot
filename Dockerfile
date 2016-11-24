FROM openjdk:8-jre-alpine
MAINTAINER Yan Minari <yangm97@gmail.com>

WORKDIR /opt/app

RUN echo eula=true > eula.txt && \
    mkdir world world_nether world_the_end && \
    chown -R nobody:nogroup /opt/app

VOLUME /opt/app

COPY spigot-*.jar /var/srv/spigot.jar

USER nobody

CMD ["java", "-jar", "/var/srv/spigot.jar"]

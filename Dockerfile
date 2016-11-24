FROM openjdk:8-jre-alpine
MAINTAINER Yan Minari <yangm97@gmail.com>

COPY spigot-*.jar /var/srv/spigot.jar

WORKDIR /opt/app

USER nobody

RUN echo eula=true > eula.txt && \
    mkdir world world_nether world_the_end 
#    /\ This is a workaround. Spigot, somehow, manages to screw the permissions when creating these directories by itself if running as a docker-compose service. 

VOLUME /opt/app

CMD ["java", "-jar", "/var/srv/spigot.jar"]

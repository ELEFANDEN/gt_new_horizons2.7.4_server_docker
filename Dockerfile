FROM openjdk:21-jdk-slim

WORKDIR /app

RUN apt-get update && apt-get install -y wget unzip

RUN wget http://downloads.gtnewhorizons.com/ServerPacks/GT_New_Horizons_2.7.4_Server_Java_17-21.zip

RUN unzip GT_New_Horizons_2.7.4_Server_Java_17-21.zip -d /app

COPY eula.txt /app

COPY server.properties /app

VOLUME /app

EXPOSE 25565/tcp

CMD ["bash", "startserver-java9.sh"]


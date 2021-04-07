FROM ubuntu:latest

RUN ["apt-get", "update"]
RUN ["apt-get", "-y", "upgrade"]
RUN ["apt-get", "install", "-y", "wget", "openjdk-8-jre-headless"]

COPY ["start.sh", "/opt"]
COPY ["server-setup-config.yaml", "/opt"]
COPY ["eula.txt", "/opt"]
COPY ["server.properties", "/opt"]

WORKDIR /opt/
ENTRYPOINT [ "bash", "start.sh" ]
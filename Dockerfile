FROM jenkinsci/ssh-slave

RUN apt-get update -y
RUN apt install maven -y
RUN mvn -version
FROM jenkinsci/ssh-slave

# Update et installation des misc 
RUN apt-get update -y
RUN apt-get install curl -y

# Java informations
RUN java -version
RUN apt remove openjdk-8-jdk
RUN apt install openjdk-11-jdk

# Installation de Maven (OpenJDK 8 est présent dans jenkinsci/ssh-slave)
RUN apt-get install maven -y
RUN mvn -version

# Installation de nodejs et npm
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt install nodejs -y
RUN node --version
RUN npm --version
RUN whereis node
RUN whereis npm

#Installation de angular cli
RUN npm install -g @angular/cli
RUN ng version
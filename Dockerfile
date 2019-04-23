FROM jenkinsci/ssh-slave

# Update et installation des misc 
RUN apt-get update -y
RUN apt-get install curl -y

# Java informations
RUN java -version
RUN apt-get install --only-upgrade openjdk-8-jdk -y
RUN java -version

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

# Installation de angular cli
RUN npm install -g @angular/cli
RUN ng version

# Installation de node-sass (besoin d'un accès à Github)
RUN npm install -g node-sass
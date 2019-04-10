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

#Installation de angular cli
RUN npm install -g @angular/cli
RUN ng version
RUN apt install iptables sudo -y
RUN adduser user1
RUN adduser user1 sudo
RUN su - user1
RUN sudo iptables -L
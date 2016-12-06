From java:7
COPY src /home/root/javahelloworld/src
WORKDIR /home/root/javahelloworld
RUN mkdir bin
RUN javac -d bin src/Helloworld.java
RUN apt-get update && apt-get install -y vim
ENTRYPOINT ["java", "-cp", "bin", "Helloworld"]


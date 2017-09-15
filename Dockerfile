FROM ubuntu:16.04

# Work in app dir by default.
WORKDIR /app

# Copy the current directory contents into the container at /app
ADD . /app

RUN apt-get -qqy update && \
    apt-get -qqy --no-install-recommends install \
    openjdk-8-jdk \
&& rm -rf /var/lib/apt/lists/*

#===============
# Set JAVA_HOME
#===============
ENV JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/jre" \
JRE_HOME=$JAVA_HOME/jre \
PATH=$PATH:$JAVA_HOME/bin

# Run run.sh when the container launches
ADD run.sh run.sh
RUN chmod +x run.sh
CMD ./run.sh

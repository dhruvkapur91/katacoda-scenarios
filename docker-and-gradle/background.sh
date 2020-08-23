#!/bin/bash
set -xe

apt install -y openjdk-14-jdk

java -version

export JAVA_HOME=/usr/lib/jvm/java-1.14.0-openjdk-amd64/

git clone https://github.com/dhruvkapur91/dockerize-gradle-springboot-app.git
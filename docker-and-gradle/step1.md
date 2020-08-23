`apt install openjdk-14-jdk`{{execute}}

`java -version`{{execute}}

`export JAVA_HOME=/usr/lib/jvm/java-1.14.0-openjdk-amd64/`{{execute}}

`git clone https://github.com/dhruvkapur91/dockerize-gradle-springboot-app.git`{{execute}}

`cd dockerize-gradle-springboot-app.git`{{execute}}

`./gradlew bootRun &`{{execute}}

`curl localhost:8080/greeting`{{execute}}
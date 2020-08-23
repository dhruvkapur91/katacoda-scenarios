echo "Script Started" >> background.log

apt install -y openjdk-14-jdk 2>&1 >> background.log

echo "Setting The Java Home" >> background.log
export JAVA_HOME=/usr/lib/jvm/java-1.14.0-openjdk-amd64/

echo "Cloing the repo" >> background.log 
git clone https://github.com/dhruvkapur91/dockerize-gradle-springboot-app.git

echo "Executing the spring boot project" >> background.log
cd dockerize-gradle-springboot-app
./gradlew bootRun & 2>&1 > /dev/null

echo "Please go and check at localhost:8080" >> background.log
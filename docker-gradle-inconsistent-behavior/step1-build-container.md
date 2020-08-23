- Clone the repo

`git clone https://github.com/dhruvkapur91/dockerize-gradle-springboot-app.git`{{execute}}

`cd dockerize-gradle-springboot-app`{{execute}}

- We'll be using the this Dockerfile
`cat -n Dockerfile`{{execute}}

# Base Image

- First lets see how many jars are there in gradle in the base image itself
`docker container run gradle:6.4.1-jdk14 find / | grep gradle | nl`{{execute}}
- Its about 232 for me
- Clearly there is no Spring related jar here, more importantly there's nothing in `/home/gradle/.gradle/` directory

# Our Docker file

- We only copy gradle related files
- Line 4, downloads (most of?) the dependencies 
- This is evident from the logs of the build
  - Notice, all the downloads

`docker build -t why_no_cache_of_gradle_dependencies .`{{execute}}

- However on running the container, notice there are no additional dependencies in the container. 
`docker container run -it why_no_cache_of_gradle_dependencies find / | grep gradle | nl `{{execute}}

# Inconsistent behavior

- However if we rerun the same command as of line 4 in Dockerfile in the container
`docker container run -it why_no_cache_of_gradle_dependencies bash -c "gradle -i clean build; find / | grep gradle | nl"`{{execute}}

- We see that lot of jars are added to `/home/gradle/.gradle/caches/` directory, where as previously it was empty...

`docker container run -it why_no_cache_of_gradle_dependencies bash -c "find / | grep gradle | nl"`{{execute}}

- Is this behaviour expected?
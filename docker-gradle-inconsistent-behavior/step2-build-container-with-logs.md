- Okay this time we'll try with more logging while building the docker image

- Let's remove any previous containers
`docker rm -f $(docker ps -aq)`{{execute}}

- Let's remove any previous images so as to get a clean slate
`docker rmi $(docker image ls)`{{execute}}

- This is the dockerfile
`cat Dockerfile_with_logs`{{execute}}

- Run this to build image
`docker build -t image_with_logs -f Dockerfile_with_logs . > build_image_with_logs.log`{{execute}}
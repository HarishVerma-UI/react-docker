1> Create a folder 
   mkdir Docker
2> install Docker 
   $ sudo apt-get update
   sudo apt-get install docker.io

   basic docker cammands 

   Pull an image from a registry
    $ docker pull alpine:3.4 

   Retag a local image with a new image name and tag
    $ docker tag alpine:3.4 myrepo/myalpine:3.4

   Log in to a registry (the Docker Hub by default)
    $ docker login my.registry.com:8000

   Push an image to a registry
    $ docker push myrepo/myalpine:3.4   

   Build an image from the Dockerfile in the current
   directory and tag the image
   $ docker build -t myapp:1.0 .
   List all images that are locally stored with the Docker
   $ engine
   $ docker images
   Delete an image from the local image store
   docker rmi alpine:3.4

3> Create react app
    $create-react-app docker  
    add a docker file in react 
       
        FROM node:latest
        #Create app directory
        RUN mkdir -p /usr/src/app
        WORKDIR /usr/src/app

        RUN npm build

        COPY package.json /usr/src/app/

        RUN npm install
        RUN npm audit fix

        ADD src /usr/src/app/src
        ADD public /usr/src/app/public

        CMD ["npm","start"]
4>  react docker file make build 
    $ sudo docker image build -t react ./

5>  get into docker file container
    $ sudo docker run -it react bash   
    run the comands $ npm start ,$
    npm start build 
6>  exit

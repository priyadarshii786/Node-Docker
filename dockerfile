FROM node:18-alpine

# Create a app directory
WORKDIR /app

# Install app dependencies
COPY package*.json ./

# Run npm install
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080

CMD ["npm","start"]




############ Docker Commands ############

# docker -h

# docker build . -t chikku/node-docker-app:v1

# docker images  ----- list down all the images built

# docker run -d -p 8001:8080 chikku/node-docker-app:v1   ----- run the container

# docker ps ----- list down all the containers running in background alongwith their information.

# docker ps -a ----- list down all the docker containers created

# docker rm (Container ID) ----- remove the docker container

# docker rmi (Image ID) ----- remove the docker Image.
# you can get image ID from the command "docker images"

# docker logs (ID of the container ie; fetch it from using "docker ps" command)  -----  prints out the log of a particular container.
# eg; docker logs 70c313bed730

# docker stop (Container ID) ----- to stop the container.

# docker run -d -p 8001:8080 -v $(pwd):/app --name  chikku-node-docker-container chikku/node-docker-app:v1   ----- run the container with a particular name. (Mount volume local project to container directory) OR SIMPLY if you want changes made in your file to appear in the images which has already been made. By using this command there is no need to make images every time you change the stuff in file.
#
#
#
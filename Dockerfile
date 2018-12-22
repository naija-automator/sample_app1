# Sets the base image to the latest Node.js
FROM node:10.9.0

# Copys the application into the image
COPY . .

#Installs the dependencies using NPM
RUN npm install npm@latest

#Documents the port the app will listen on
EXPOSE 8000

#Instruct Docker what command it should run on container start up
CMD npm start

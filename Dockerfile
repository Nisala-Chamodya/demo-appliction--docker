#base image get in docker hub
FROM node:20-alpine

# working directory specify in docker
WORKDIR /app

# copy the package.json file
COPY package.json .

# install the dependencies
RUN npm install

# copy the source code
COPY . .

# run the app
CMD [ "npm","start" ]
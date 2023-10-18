# use node 18 alpine for base image
FROM node:18-alpine as base
# change working directory to /src
WORKDIR /src
# copy all packages files to current workdir
COPY ./package*.json ./

# define environment key PORT with default value 3000
ENV PORT=3000
# define environment key AMQP_URL with default value amqp://localhost:5672
ENV AMQP_URL=amqp://localhost:5672

# execute command npm install to install all package
RUN npm install
# copy all files on host directory to current working directory
COPY . .
# expose port 3000
EXPOSE 3000
# run command 'npm start' on container start 
CMD [ "npm", "start" ]
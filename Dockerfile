# use node:14 image
FROM node:14-alpine

# change current working directory to /app
WORKDIR /app

# copy all source code to current working directory
COPY . .

# define enviroments
ENV NODE_ENV=production
ENV DB_HOST=item-db

# install depedency and run build application for production
RUN npm install --production --unsafe-perm && npm run build

# expose port 8080
EXPOSE 8080

# run command to start service
CMD [ "npm", "start" ]
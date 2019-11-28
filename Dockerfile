# Dockerfile para node
# image => mnikkel/nodedev
# tag atual => 1.0.0
FROM node:10 

WORKDIR /app 

COPY package.json package.json 

RUN npm install 

COPY . . 

EXPOSE 4000 

RUN npm install -g nodemon

CMD [ "nodemon", "app.js" ]
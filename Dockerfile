#what image to use
FROM node

#setting up a work directory
WORKDIR /app

#copying only package.json before npm install 
#Docker has caching mechanism, so if package.json is not changed
#new npm install will not be run, but taken from cache
COPY package.json /app/ 

#installing all necessary components from package.json
RUN npm install

#copying all the file
COPY . .

#letting Docker know that internal port 3000 should be available
EXPOSE 3000

#starting a node server
CMD [ "node", "app.js" ]
FROM node:8

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY hashbase/package*.json ./

RUN npm install

# Bundle app source
COPY hashbase/. .

EXPOSE 8080
# Run Application
CMD ["npm", "start"]

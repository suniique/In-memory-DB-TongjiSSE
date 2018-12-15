FROM node:8

# Create app directory
RUN mkdir -p /home/Service
WORKDIR /home/Service                  

# Bundle app source
COPY . /home/Service  
RUN npm install http-server -g
RUN npm install --production
RUN npm run build

EXPOSE 8086
CMD [ "npm", "run", "serve" ]

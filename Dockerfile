FROM node:8

# Create app directory
RUN mkdir -p /home/Service
WORKDIR /home/Service                  

# Bundle app source
COPY . /home/Service  
# RUN npm cache clean -f
# RUN npm install -g n
# RUN n stable
RUN npm install --production
RUN npm build

EXPOSE 8086
CMD [ "npm", "run", "start" ]

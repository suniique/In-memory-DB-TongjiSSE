FROM hub.c.163.com/nce2/nodejs:0.12.2

# Create app directory
RUN mkdir -p /home/Service
WORKDIR /home/Service                  

# Bundle app source
COPY . /home/Service                   
# RUN npm install                        # 使用npm 安装我们的app据需要的所有依赖

EXPOSE 8888
CMD [ "npm", "server" ]

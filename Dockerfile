FROM node:7.10.1

# install deps
ADD package.json /tmp/package.json
RUN cd /tmp && npm install

# Copy deps
RUN mkdir -p /opt/smartrooves && cp -a /tmp/node_modules /opt/smartrooves

# Setup workdir
WORKDIR /opt/smartrooves
COPY . /opt/smartrooves

# run
EXPOSE 3000
CMD ["npm", "start"]

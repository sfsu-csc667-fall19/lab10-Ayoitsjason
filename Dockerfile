# Plain linux with node installed
FROM node:10-alpine

WORKDIR /main
COPY . /main

# since npm install is inside this container its going to download
# node:10-alpine
RUN npm install

EXPOSE 80

CMD ["node", "index.js"]
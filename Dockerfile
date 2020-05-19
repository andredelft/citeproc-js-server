FROM node:10

WORKDIR /citeproc
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8085

CMD ["npm", "start"]

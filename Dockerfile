FROM node:10.20.1-alpine3.11

WORKDIR /citeproc
COPY package*.json ./

RUN npm install

COPY . .

RUN apk add python
RUN python xmltojson.py ./csl ./csljson && python xmltojson.py ./csl-locales ./csljson-locales

EXPOSE 8085

CMD ["npm", "start"]

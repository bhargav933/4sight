FROM node:12.18.3
COPY package.json .
COPY package-lock.json .
RUN npm install --production
COPY . .
ENTRYPOINT npm start

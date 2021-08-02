FROM node:12.18.3
COPY package.json
COPY package-lock.json
RUN npm i
COPY . .
CMD ["npm", "start"]
EXPOSE 3000
EXPOSE 3001

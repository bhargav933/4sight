FROM node:12.18.3 AS build
WORKDIR /dev
COPY package.json .
COPY package-lock.json .
RUN npm install --production
COPY . .
CMD ["npm", "run", "build"]

FROM nginx
COPY --from=build /dev/build/* /usr/share/nginx/html/
CMD ["nginx", "-g", "daemon off"]

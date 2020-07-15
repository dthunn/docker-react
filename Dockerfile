FROM node:alpine as builder
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx
COPY --from=builder /app/build  /usr/share/nginx/html

DockerReact-env.eba-i4d79npp.us-west-2.elasticbeanstalk.com
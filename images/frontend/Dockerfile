FROM node:14 as build-stage

WORKDIR /app

COPY src/frontend /app

RUN npm install

RUN npm run build

FROM nginx:1.21

COPY --from=build-stage /app/build/ /usr/share/nginx/html
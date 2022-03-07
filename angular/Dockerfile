FROM node:16.10.0-alpine as builder

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install && npm audit fix
COPY . .
RUN npx ng build --prod angular


FROM nginx:stable-alpine

COPY --from=builder /usr/src/app/dist/angular /usr/share/nginx/html
COPY /nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
# "..alpine as builder can be used (Can give problems in AWS)"
FROM node:alpine

WORKDIR /usr/app

COPY ./package.json ./
RUN npm install
COPY ./ ./
RUN npm run build

FROM nginx
#Expose the por 80 to tell everyone that it's open (AWS NEEDS IT !)
EXPOSE 80
COPY --from=0 /usr/app/build /usr/share/nginx/html
#Images start from 0, 0th here is the node one above !
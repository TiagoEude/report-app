FROM node:14-alpine as dev
RUN mkdir -p /app
WORKDIR /app
RUN npm install -g @angular/cli
COPY package.json /app
RUN npm install
COPY . /app
EXPOSE 4200
CMD ["ng","serve","--host", "0.0.0.0:4200"]
# RUN npm start


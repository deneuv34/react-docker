FROM node:15-alpine

WORKDIR /app
COPY . .
RUN npm i; npm i -g serve
RUN npm run build

EXPOSE 5000

CMD ["serve", "-s", "build"]
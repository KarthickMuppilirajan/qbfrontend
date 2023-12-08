FROM node:18.0
ARG NPM_DEV
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
ENV NPM_DEV=$NPM_DEV
CMD ["npm", "run", "start:dev"]

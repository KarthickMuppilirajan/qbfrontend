# FROM node:18.0
# ARG NPM_DEV
# WORKDIR /app
# COPY package*.json ./
# RUN npm install
# COPY . .
# EXPOSE 3000
# ENV NPM_DEV=$NPM_DEV
# CMD ["npm", "run", "start:dev"]


FROM node:18.0
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh
CMD ["/bin/bash", "/app/entrypoint.sh"]

FROM node:lts 

WORKDIR /opt/workspace/gemba-docker-for-nestjs

COPY package.json ./

RUN npm install -g npm@latest

RUN npm install -g @nestjs/cli

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "start:dev"]
FROM node:20

LABEL name="faxmishok/chess-server"
LABEL version="1.0.0"

WORKDIR /usr/app/

COPY . .

RUN npm i

ENV PORT 80

EXPOSE 80/tcp

ENTRYPOINT ["npm", "start"]
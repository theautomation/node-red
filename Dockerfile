FROM docker.io/nodered/node-red:3.1

WORKDIR /usr/src/node-red

RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production

COPY ./src/data/ /data/

RUN npm install \
    node-red-contrib-calc \
    node-red-contrib-cron-plus \
    node-red-contrib-home-assistant-websocket \
    node-red-contrib-schedex \
    node-red-contrib-simpletime \
    node-red-contrib-stoptimer \
    node-red-contrib-time-range-switch \
    node-red-contrib-traffic \
    node-red-contrib-flow-manager \
    node-red-node-random \
    node-red-contrib-simple-message-queue
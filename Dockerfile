FROM node:14-alpine

RUN npm install -g @mockoon/cli@2.0.0

ADD ./tmp/mockoon-mbs-api.json ./data
RUN adduser --shell /bin/sh --disabled-password --gecos "" mockoon

CMD ["sh", "-c", "mockoon-cli start -d ./data -p ${PORT}; sleep infinity & wait"]
ARG ENV production

FROM node:18-alpine

WORKDIR /app

RUN apk update && apk upgrade

COPY . .

RUN chmod +x run.sh && \
  npm i

ENTRYPOINT [ "./run.sh" ]

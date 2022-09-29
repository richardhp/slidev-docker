FROM node:17-alpine3.15

RUN mkdir /slidev
RUN mkdir -p /tmp/slides

WORKDIR /slidev

COPY ./package.json .
COPY ./package-lock.json .

RUN npm ci

COPY . .

RUN chmod +x ./entrypoint.sh
ENTRYPOINT [ "./entrypoint.sh" ]

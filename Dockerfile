FROM nginx:stable-alpine

WORKDIR /root

RUN \
  apk update && \
  apk add \
  nfs-utils
  
RUN \
  apk cache clean

COPY . .

CMD [ "/root/webserver.sh" ]

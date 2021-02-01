FROM nginx:stable-alpine

WORKDIR /root

RUN \
  apk update && \
  apk add \
  nfs-utils
  
COPY . .

CMD [ "/root/webserver.sh" ]

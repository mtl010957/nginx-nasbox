FROM nginx:stable-alpine

WORKDIR /root

RUN \
  apk update && \
  apk add \
  nfs-utils
  
COPY . .
COPY default.conf /etc/nginx/conf.d
RUN ln -s /usr/share/nas_a2/3629cam1 /usr/share/nginx/html
RUN ln -s /usr/share/nas_a2/3629cam2 /usr/share/nginx/html
RUN ln -s /usr/share/nas_a2/3629cam3 /usr/share/nginx/html
RUN ln -s /usr/share/nas_a2/3629cam4 /usr/share/nginx/html
RUN ln -s /usr/share/nas_a2/mtl /usr/share/nginx/html
RUN mkdir /usr/share/nas_a2

CMD [ "/root/webserver.sh" ]

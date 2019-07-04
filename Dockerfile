FROM nginx

COPY jota-cert-checker.sh /
COPY sitelist /
COPY start.sh /

RUN apt-get update && \
    apt-get install openssl  && \
    apt-get clean && \
    chmod +x /*.sh 


CMD /start.sh  && nginx -g daemon off



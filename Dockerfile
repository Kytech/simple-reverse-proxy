FROM nginx:latest

COPY proxyserver.template startContainer /usr/local/bin/

RUN chmod 755 /usr/local/bin/startContainer && \
    chmod 644 /usr/local/bin/proxyserver.template && \
    mv /usr/local/bin/proxyserver.template /etc/nginx/conf.d/

CMD startContainer